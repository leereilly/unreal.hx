package unreal.helpers;

@:headerCode('extern "C" void check_hx_init();\n')
@:headerClassCode('
  GcRef() {
    check_hx_init();
    this->init();
  };
  ~GcRef() {
    this->destruct();
  };
  GcRef(const GcRef& rhs) {
    this->init();
    set(const_cast<GcRef&>(rhs).get());
  }
')
@:uexpose @:keep class GcRef {
  public var ref(default,null):cpp.RawPointer<cpp.Void>;

  @:extern inline private function getRoot():GcRoot {
    return HaxeHelpers.pointerToDynamic(this.ref);
  }

  @:final @:nonVirtual @:void private function init() {
    this.ref = HaxeHelpers.dynamicToPointer( GcRoot.create(null) );
  }

  @:final @:nonVirtual @:void public function set(dyn:cpp.RawPointer<cpp.Void>) {
    getRoot().value = HaxeHelpers.pointerToDynamic(dyn);
  }

  @:final @:nonVirtual public function get():cpp.RawPointer<cpp.Void> {
    return HaxeHelpers.dynamicToPointer(getRoot().value);
  }

  @:final @:nonVirtual @:void public function destruct() {
    getRoot().destruct();
  }
}
