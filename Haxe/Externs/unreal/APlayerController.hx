/**
   * 
   * WARNING! This file was autogenerated by: 
   *  _   _ _____     ___   _   _ __   __ 
   * | | | |  ___|   /   | | | | |\ \ / / 
   * | | | | |__    / /| | | |_| | \ V /  
   * | | | |  __|  / /_| | |  _  | /   \  
   * | |_| | |___  \___  | | | | |/ /^\ \ 
   *  \___/\____/      |_/ \_| |_/\/   \/ 
   * 
   * This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
   * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal;


/**
  PlayerControllers are used by human players to control Pawns.
  
  ControlRotation (accessed via GetControlRotation()), determines the aiming
  orientation of the controlled Pawn.
  
  In networked games, PlayerControllers exist on the server for every player-controlled pawn,
  and also on the controlling client's machine. They do NOT exist on a client's
  machine for pawns controlled by remote players elsewhere on the network.
  
  @see https://docs.unrealengine.com/latest/INT/Gameplay/Framework/Controller/PlayerController/
**/
@:glueCppIncludes("GameFramework/PlayerController.h")
@:uextern extern class APlayerController extends unreal.AController {
  
  /**
    The value of SeamlessTravelCount, upon the last call to GameMode::HandleSeamlessTravelPlayer; used to detect seamless travel
  **/
  public var LastCompletedSeamlessTravelCount : unreal.UInt16;
  
  /**
    Counter for this players seamless travels (used along with the below value, to restrict ServerNotifyLoadedWorld)
  **/
  public var SeamlessTravelCount : unreal.UInt16;
  
  /**
    The location used internally when there is no pawn or spectator, to know where to spawn the spectator or focus the camera on death.
  **/
  private var SpawnLocation : unreal.FVector;
  
  /**
    The currently set touch interface
  **/
  private var CurrentTouchInterface : unreal.UTouchInterface;
  
  /**
    InputComponent we use when player is in Inactive state.
  **/
  private var InactiveStateInputComponent : unreal.UInputComponent;
  public var HitResultTraceDistance : unreal.Float32;
  
  /**
    Trace channel currently being used for determining what world object was clicked on.
  **/
  public var CurrentClickTraceChannel : unreal.ECollisionChannel;
  
  /**
    Default trace channel used for determining what world object was clicked on.
  **/
  public var DefaultClickTraceChannel : unreal.ECollisionChannel;
  public var CurrentMouseCursor : unreal.EMouseCursor;
  public var DefaultMouseCursor : unreal.EMouseCursor;
  public var bForceFeedbackEnabled : Bool;
  
  /**
    Whether actor/component touch over events should be generated.
  **/
  public var bEnableTouchOverEvents : Bool;
  
  /**
    Whether actor/component mouse over events should be generated.
  **/
  public var bEnableMouseOverEvents : Bool;
  
  /**
    Whether actor/component touch events should be generated.
  **/
  public var bEnableTouchEvents : Bool;
  
  /**
    Whether actor/component click events should be generated.
  **/
  public var bEnableClickEvents : Bool;
  
  /**
    Whether the mouse cursor should be displayed.
  **/
  public var bShowMouseCursor : Bool;
  
  /**
    Roll input speed scaling
  **/
  public var InputRollScale : unreal.Float32;
  
  /**
    Pitch input speed scaling
  **/
  public var InputPitchScale : unreal.Float32;
  
  /**
    Yaw input speed scaling
  **/
  public var InputYawScale : unreal.Float32;
  
  /**
    The net connection this controller is communicating on, NULL for local players on server
  **/
  public var NetConnection : unreal.UNetConnection;
  
  /**
    this is set on the OLD PlayerController when performing a swap over a network connection
    so we know what connection we're waiting on acknowledgment from to finish destroying this PC
    (or when the connection is closed)
    @see GameMode::SwapPlayerControllers()
  **/
  public var PendingSwapConnection : unreal.UNetConnection;
  
  /**
    index identifying players using the same base connection (splitscreen clients)
    Used by netcode to match replicated PlayerControllers to the correct splitscreen viewport and child connection
    replicated via special internal code, not through normal variable replication
  **/
  public var NetPlayerIndex : unreal.UInt8;
  
  /**
    True if PlayerController is currently waiting for the match to start or to respawn. Only valid in Spectating state.
  **/
  public var bPlayerIsWaiting : Bool;
  
  /**
    Object that manages player input.
  **/
  public var PlayerInput : unreal.UPlayerInput;
  
  /**
    class of my CheatManager.
  **/
  public var CheatClass : unreal.TSubclassOf<unreal.UCheatManager>;
  
  /**
    Object that manages "cheat" commands.  Not instantiated in shipping builds.
  **/
  public var CheatManager : unreal.UCheatManager;
  
  /**
    Cap set by server on bandwidth from client to server in bytes/sec (only has impact if >=2600)
  **/
  public var ClientCap : unreal.Int32;
  
  /**
    Last rotation synced on the server for a spectator.
  **/
  public var LastSpectatorSyncRotation : unreal.FRotator;
  
  /**
    Last location synced on the server for a spectator.
  **/
  public var LastSpectatorSyncLocation : unreal.FVector;
  
  /**
    Used to make sure the client is kept synchronized when in a spectator state
  **/
  public var LastSpectatorStateSynchTime : unreal.Float32;
  
  /**
    The actors which the camera shouldn't see - e.g. used to hide actors which the camera penetrates
  **/
  public var HiddenActors : unreal.TArray<unreal.AActor>;
  
  /**
    Used to replicate the view rotation of targets not owned/possessed by this PlayerController.
  **/
  public var TargetViewRotation : unreal.FRotator;
  
  /**
    True to allow this player controller to manage the camera target for you,
    typically by using the possessed pawn as the camera target. Set to false
    if you want to manually control the camera target.
  **/
  public var bAutoManageActiveCameraTarget : Bool;
  
  /**
    PlayerCamera class should be set for each game, otherwise Engine.PlayerCameraManager is used
  **/
  public var PlayerCameraManagerClass : unreal.TSubclassOf<unreal.APlayerCameraManager>;
  
  /**
    Camera manager associated with this Player Controller.
  **/
  public var PlayerCameraManager : unreal.APlayerCameraManager;
  
  /**
    Heads up display associated with this PlayerController.
  **/
  public var MyHUD : unreal.AHUD;
  
  /**
    Director track that's currently possessing this player controller, or none if not possessed.
  **/
  public var ControllingDirTrackInst : unreal.UInterpTrackInstDirector;
  
  /**
    Used in net games so client can acknowledge it possessed a specific pawn.
  **/
  public var AcknowledgedPawn : unreal.APawn;
  
  /**
    Indicate that the Spectator is waiting to join/respawn.
  **/
  public function ServerSetSpectatorWaiting(bWaiting : Bool) : Void;
  
  /**
    Indicate that the Spectator is waiting to join/respawn.
  **/
  public function ClientSetSpectatorWaiting(bWaiting : Bool) : Void;
  
  /**
    Enables cheats within the game
  **/
  public function EnableCheats() : Void;
  
  /**
    Set the field of view to NewFOV
  **/
  public function FOV(NewFOV : unreal.Float32) : Void;
  
  /**
    Restarts the current level
  **/
  public function RestartLevel() : Void;
  
  /**
    Causes the client to travel to the given URL
  **/
  public function LocalTravel(URL : unreal.FString) : Void;
  
  /**
    Return the client to the main menu gracefully
  **/
  public function ClientReturnToMainMenu(ReturnReason : unreal.FString) : Void;
  
  /**
    Development RPC for testing object reference replication
  **/
  public function ClientRepObjRef(Object : unreal.UObject) : Void;
  
  /**
    Command to try to pause the game.
  **/
  public function Pause() : Void;
  
  /**
    Trys to set the player's name to the given name.
  **/
  public function SetName(S : unreal.FString) : Void;
  
  /**
    SwitchLevel to the given MapURL.
  **/
  public function SwitchLevel(URL : unreal.FString) : Void;
  
  /**
    Locks or unlocks movement input, consecutive calls stack up and require the same amount of calls to undo, or can all be undone using ResetIgnoreMoveInput.
    @param bNewMoveInput        If true, move input is ignored. If false, input is not ignored.
  **/
  public function SetIgnoreMoveInput(bNewMoveInput : Bool) : Void;
  
  /**
    Stops ignoring move input by resetting the ignore move input state.
  **/
  public function ResetIgnoreMoveInput() : Void;
  
  /**
    Returns true if movement input is ignored.
  **/
  @:thisConst public function IsMoveInputIgnored() : Bool;
  
  /**
    Locks or unlocks look input, consecutive calls stack up and require the same amount of calls to undo, or can all be undone using ResetIgnoreLookInput.
    @param bNewLookInput        If true, look input is ignored. If false, input is not ignored.
  **/
  public function SetIgnoreLookInput(bNewLookInput : Bool) : Void;
  
  /**
    Stops ignoring look input by resetting the ignore look input state.
  **/
  public function ResetIgnoreLookInput() : Void;
  
  /**
    Returns true if look input is ignored.
  **/
  @:thisConst public function IsLookInputIgnored() : Bool;
  
  /**
    reset move and look input ignore flags to defaults
  **/
  public function ResetIgnoreInputFlags() : Void;
  @:thisConst @:final public function GetHitResultUnderCursor(TraceChannel : unreal.ECollisionChannel, bTraceComplex : Bool, HitResult : unreal.PRef<unreal.FHitResult>) : Bool;
  @:thisConst @:final public function GetHitResultUnderCursorByChannel(TraceChannel : unreal.ETraceTypeQuery, bTraceComplex : Bool, HitResult : unreal.PRef<unreal.FHitResult>) : Bool;
  @:thisConst @:final public function GetHitResultUnderFinger(FingerIndex : unreal.inputcore.ETouchIndex, TraceChannel : unreal.ECollisionChannel, bTraceComplex : Bool, HitResult : unreal.PRef<unreal.FHitResult>) : Bool;
  @:thisConst @:final public function GetHitResultUnderFingerByChannel(FingerIndex : unreal.inputcore.ETouchIndex, TraceChannel : unreal.ETraceTypeQuery, bTraceComplex : Bool, HitResult : unreal.PRef<unreal.FHitResult>) : Bool;
  
  /**
    Convert current mouse 2D position to World Space 3D position and direction. Returns false if unable to determine value. *
  **/
  @:thisConst @:final public function DeprojectMousePositionToWorld(WorldLocation : unreal.PRef<unreal.FVector>, WorldDirection : unreal.PRef<unreal.FVector>) : Bool;
  
  /**
    Convert current mouse 2D position to World Space 3D position and direction. Returns false if unable to determine value. *
  **/
  @:thisConst @:final public function DeprojectScreenPositionToWorld(ScreenX : unreal.Float32, ScreenY : unreal.Float32, WorldLocation : unreal.PRef<unreal.FVector>, WorldDirection : unreal.PRef<unreal.FVector>) : Bool;
  
  /**
    Convert a World Space 3D position into a 2D Screen Space position.
    @return true if the world coordinate was successfully projected to the screen.
  **/
  @:thisConst @:final public function ProjectWorldLocationToScreen(WorldLocation : unreal.FVector, ScreenLocation : unreal.PRef<unreal.FVector2D>) : Bool;
  
  /**
    Fire the player's currently selected weapon with the optional firemode.
  **/
  public function StartFire(FireModeNum : unreal.UInt8) : Void;
  
  /**
    Tell the client to enable or disable voice chat (not muting)
    @param bEnable enable or disable voice chat
  **/
  public function ClientEnableNetworkVoice(bEnable : Bool) : Void;
  
  /**
    Toggle voice chat on and off
    @param bSpeaking enable or disable voice chat
  **/
  public function ToggleSpeaking(bInSpeaking : Bool) : Void;
  
  /**
    Tells the client that the server has all the information it needs and that it
    is ok to start sending voice packets. The server will already send voice packets
    when this function is called, since it is set server side and then forwarded
    
    NOTE: This is done as an RPC instead of variable replication because ordering matters
  **/
  public function ClientVoiceHandshakeComplete() : Void;
  
  /**
    Console control commands, useful when remote debugging so you can't touch the console the normal way
  **/
  public function ConsoleKey(Key : unreal.inputcore.FKey) : Void;
  
  /**
    Sends a command to the console to execute if not shipping version
  **/
  public function SendToConsole(Command : unreal.FString) : Void;
  
  /**
    Adds a location to the texture streaming system for the specified duration.
  **/
  @:final public function ClientAddTextureStreamingLoc(InLoc : unreal.FVector, Duration : unreal.Float32, bOverrideLocation : Bool) : Void;
  
  /**
    Tells client to cancel any pending map change.
  **/
  public function ClientCancelPendingMapChange() : Void;
  
  /**
    Set CurrentNetSpeed to the lower of its current value and Cap.
  **/
  public function ClientCapBandwidth(Cap : unreal.Int32) : Void;
  
  /**
    Actually performs the level transition prepared by PrepareMapChange().
  **/
  public function ClientCommitMapChange() : Void;
  
  /**
    Tells the client to block until all pending level streaming actions are complete
    happens at the end of the tick
    primarily used to force update the client ASAP at join time
  **/
  @:final public function ClientFlushLevelStreaming() : Void;
  
  /**
    Forces GC at the end of the tick on the client
  **/
  public function ClientForceGarbageCollection() : Void;
  
  /**
    Replicated function called by GameHasEnded().
    @param       EndGameFocus - actor to view with camera
    @param       bIsWinner - true if this controller is on winning team
  **/
  public function ClientGameEnded(EndGameFocus : unreal.AActor, bIsWinner : Bool) : Void;
  
  /**
    Server uses this to force client into NewState .
    @Note ALL STATE NAMES NEED TO BE DEFINED IN name table in UnrealNames.h to be correctly replicated (so they are mapped to the same thing on client and server).
  **/
  public function ClientGotoState(NewState : unreal.FName) : Void;
  
  /**
    calls IgnoreLookInput on client
  **/
  public function ClientIgnoreLookInput(bIgnore : Bool) : Void;
  
  /**
    calls IgnoreMoveInput on client
  **/
  public function ClientIgnoreMoveInput(bIgnore : Bool) : Void;
  
  /**
    Outputs a message to HUD
    @param S - message to display
    @param Type - @todo document
    @param MsgLifeTime - Optional length of time to display 0 = default time
  **/
  public function ClientMessage(S : unreal.FString, Type : unreal.FName, MsgLifeTime : unreal.Float32) : Void;
  
  /**
    Play the indicated CameraAnim on this camera.
    @param AnimToPlay - Camera animation to play
    @param Scale - "Intensity" scalar.  This is the scale at which the anim was first played.
    @param Rate -  Multiplier for playback rate.  1.0 = normal.
    @param BlendInTime - Time to interpolate in from zero, for smooth starts
    @param BlendOutTime - Time to interpolate out to zero, for smooth finishes
    @param bLoop - True if the animation should loop, false otherwise
    @param bRandomStartTime - Whether or not to choose a random time to start playing.  Only really makes sense for bLoop = true
    @param Space - Animation play area
    @param CustomPlaySpace - Matrix used when Space = CAPS_UserDefined
  **/
  public function ClientPlayCameraAnim(AnimToPlay : unreal.UCameraAnim, Scale : unreal.Float32, Rate : unreal.Float32, BlendInTime : unreal.Float32, BlendOutTime : unreal.Float32, bLoop : Bool, bRandomStartTime : Bool, Space : unreal.ECameraAnimPlaySpace, CustomPlaySpace : unreal.FRotator) : Void;
  
  /**
    Play Camera Shake
    @param Shake - Camera shake animation to play
    @param Scale - Scalar defining how "intense" to play the anim
    @param PlaySpace - Which coordinate system to play the shake in (used for CameraAnims within the shake).
    @param UserPlaySpaceRot - Matrix used when PlaySpace = CAPS_UserDefined
  **/
  public function ClientPlayCameraShake(Shake : unreal.TSubclassOf<unreal.UCameraShake>, Scale : unreal.Float32, PlaySpace : unreal.ECameraAnimPlaySpace, UserPlaySpaceRot : unreal.FRotator) : Void;
  
  /**
    Play sound client-side (so only the client will hear it)
    @param Sound - Sound to play
    @param VolumeMultiplier - Volume multiplier to apply to the sound
    @param PitchMultiplier - Pitch multiplier to apply to the sound
  **/
  public function ClientPlaySound(Sound : unreal.USoundBase, VolumeMultiplier : unreal.Float32, PitchMultiplier : unreal.Float32) : Void;
  
  /**
    Play sound client-side at the specified location
    @param Sound - Sound to play
    @param Location - Location to play the sound at
    @param VolumeMultiplier - Volume multiplier to apply to the sound
    @param PitchMultiplier - Pitch multiplier to apply to the sound
  **/
  public function ClientPlaySoundAtLocation(Sound : unreal.USoundBase, Location : unreal.FVector, VolumeMultiplier : unreal.Float32, PitchMultiplier : unreal.Float32) : Void;
  
  /**
    Asynchronously loads the given level in preparation for a streaming map transition.
    the server sends one function per level name since dynamic arrays can't be replicated
    @param LevelNames - the names of the level packages to load. LevelNames[0] will be the new persistent (primary) level
    @param bFirst - whether this is the first item in the list (so clear the list first)
    @param bLast - whether this is the last item in the list (so start preparing the change after receiving it)
  **/
  public function ClientPrepareMapChange(LevelName : unreal.FName, bFirst : Bool, bLast : Bool) : Void;
  
  /**
    Forces the streaming system to disregard the normal logic for the specified duration and
    instead always load all mip-levels for all textures used by the specified actor.
    @param ForcedActor           - The actor whose textures should be forced into memory.
    @param ForceDuration         - Number of seconds to keep all mip-levels in memory, disregarding the normal priority logic.
    @param bEnableStreaming      - Whether to start (true) or stop (false) streaming
    @param CinematicTextureGroups        - Bitfield indicating which texture groups that use extra high-resolution mips
  **/
  public function ClientPrestreamTextures(ForcedActor : unreal.AActor, ForceDuration : unreal.Float32, bEnableStreaming : Bool, CinematicTextureGroups : unreal.Int32) : Void;
  
  /**
    Tell client to reset the PlayerController
  **/
  public function ClientReset() : Void;
  
  /**
    Tell client to restart the level
  **/
  public function ClientRestart(NewPawn : unreal.APawn) : Void;
  
  /**
    Tells the client to block until all pending level streaming actions are complete.
    Happens at the end of the tick primarily used to force update the client ASAP at join time.
  **/
  public function ClientSetBlockOnAsyncLoading() : Void;
  
  /**
    Tell client to fade camera
    @Param bEnableFading - true if we should apply FadeColor/FadeAmount to the screen
    @Param FadeColor - Color to fade to
    @Param FadeAlpha - Amount of fading to apply
    @Param FadeTime - length of time for fade to occur over
    @Param bFadeAudio - true to apply fading of audio alongside the video
  **/
  public function ClientSetCameraFade(bEnableFading : Bool, FadeColor : unreal.FColor, FadeAlpha : unreal.FVector2D, FadeTime : unreal.Float32, bFadeAudio : Bool) : Void;
  
  /**
    Replicated function to set camera style on client
    @param       NewCamMode, name defining the new camera mode
  **/
  public function ClientSetCameraMode(NewCamMode : unreal.FName) : Void;
  
  /**
    Called by the server to synchronize cinematic transitions with the client
  **/
  public function ClientSetCinematicMode(bInCinematicMode : Bool, bAffectsMovement : Bool, bAffectsTurning : Bool, bAffectsHUD : Bool) : Void;
  
  /**
    Forces the streaming system to disregard the normal logic for the specified duration and
    instead always load all mip-levels for all textures used by the specified material.
    
    @param Material              - The material whose textures should be forced into memory.
    @param ForceDuration - Number of seconds to keep all mip-levels in memory, disregarding the normal priority logic.
    @param CinematicTextureGroups        - Bitfield indicating which texture groups that use extra high-resolution mips
  **/
  public function ClientSetForceMipLevelsToBeResident(Material : unreal.UMaterialInterface, ForceDuration : unreal.Float32, CinematicTextureGroups : unreal.Int32) : Void;
  
  /**
    Set the client's class of HUD and spawns a new instance of it. If there was already a HUD active, it is destroyed.
  **/
  public function ClientSetHUD(NewHUDClass : unreal.TSubclassOf<unreal.AHUD>) : Void;
  
  /**
    Helper to get the size of the HUD canvas for this player controller.  Returns 0 if there is no HUD
  **/
  @:thisConst @:final public function GetViewportSize(SizeX : unreal.Int32, SizeY : unreal.Int32) : Void;
  
  /**
    Gets the HUD currently being used by this player controller
  **/
  @:thisConst @:final public function GetHUD() : unreal.AHUD;
  
  /**
    Spawn a camera lens effect (e.g. blood).
  **/
  public function ClientSpawnCameraLensEffect(LensEffectEmitterClass : unreal.TSubclassOf<unreal.AEmitterCameraLensEffectBase>) : Void;
  
  /**
    Removes all Camera Lens Effects.
  **/
  public function ClientClearCameraLensEffects() : Void;
  
  /**
    Stop camera animation on client.
  **/
  public function ClientStopCameraAnim(AnimToStop : unreal.UCameraAnim) : Void;
  
  /**
    Stop camera shake on client.
  **/
  public function ClientStopCameraShake(Shake : unreal.TSubclassOf<unreal.UCameraShake>) : Void;
  
  /**
    Play a force feedback pattern on the player's controller
    @param       ForceFeedbackEffect             The force feedback pattern to play
    @param       bLooping                                Whether the pattern should be played repeatedly or be a single one shot
    @param       Tag                                             A tag that allows stopping of an effect.  If another effect with this Tag is playing, it will be stopped and replaced
  **/
  public function ClientPlayForceFeedback(ForceFeedbackEffect : unreal.UForceFeedbackEffect, bLooping : Bool, Tag : unreal.FName) : Void;
  
  /**
    Stops a playing force feedback pattern
    @param       ForceFeedbackEffect             If set only patterns from that effect will be stopped
    @param       Tag                                             If not none only the pattern with this tag will be stopped
  **/
  public function ClientStopForceFeedback(ForceFeedbackEffect : unreal.UForceFeedbackEffect, Tag : unreal.FName) : Void;
  
  /**
    Latent action that controls the playing of force feedback
    Begins playing when Start is called.  Calling Update or Stop if the feedback is not active will have no effect.
    Completed will execute when Stop is called or the duration ends.
    When Update is called the Intensity, Duration, and affect values will be updated with the current inputs
    @param       Intensity                               How strong the feedback should be.  Valid values are between 0.0 and 1.0
    @param       Duration                                How long the feedback should play for.  If the value is negative it will play until stopped
    @param   bAffectsLeftLarge           Whether the intensity should be applied to the large left servo
    @param   bAffectsLeftSmall           Whether the intensity should be applied to the small left servo
    @param   bAffectsRightLarge          Whether the intensity should be applied to the large right servo
    @param   bAffectsRightSmall          Whether the intensity should be applied to the small right servo
  **/
  @:final public function PlayDynamicForceFeedback(Intensity : unreal.Float32, Duration : unreal.Float32, bAffectsLeftLarge : Bool, bAffectsLeftSmall : Bool, bAffectsRightLarge : Bool, bAffectsRightSmall : Bool, Action : unreal.EDynamicForceFeedbackAction, LatentInfo : unreal.FLatentActionInfo) : Void;
  
  /**
    Travel to a different map or IP address. Calls the PreClientTravel event before doing anything.
    NOTE: This is implemented as a locally executed wrapper for ClientTravelInternal, to avoid API compatability breakage
    
    @param URL                           A string containing the mapname (or IP address) to travel to, along with option key/value pairs
    @param TravelType            specifies whether the client should append URL options used in previous travels; if true is specified
                                                         for the bSeamlesss parameter, this value must be TRAVEL_Relative.
    @param bSeamless                     Indicates whether to use seamless travel (requires TravelType of TRAVEL_Relative)
    @param MapPackageGuid        The GUID of the map package to travel to - this is used to find the file when it has been autodownloaded,
                                                         so it is only needed for clients
  **/
  @:final public function ClientTravel(URL : unreal.FString, TravelType : unreal.ETravelType, bSeamless : Bool, MapPackageGuid : unreal.FGuid) : Void;
  
  /**
    Internal clientside implementation of ClientTravel - use ClientTravel to call this
    
    @param URL                           A string containing the mapname (or IP address) to travel to, along with option key/value pairs
    @param TravelType            specifies whether the client should append URL options used in previous travels; if true is specified
                                                         for the bSeamlesss parameter, this value must be TRAVEL_Relative.
    @param bSeamless                     Indicates whether to use seamless travel (requires TravelType of TRAVEL_Relative)
    @param MapPackageGuid        The GUID of the map package to travel to - this is used to find the file when it has been autodownloaded,
                                                         so it is only needed for clients
  **/
  public function ClientTravelInternal(URL : unreal.FString, TravelType : unreal.ETravelType, bSeamless : Bool, MapPackageGuid : unreal.FGuid) : Void;
  
  /**
    Replicated Update streaming status
    @param PackageName - Name of the level package name used for loading.
    @param bNewShouldBeLoaded - Whether the level should be loaded
    @param bNewShouldBeVisible - Whether the level should be visible if it is loaded
    @param bNewShouldBlockOnLoad - Whether we want to force a blocking load
    @param LODIndex                              - Current LOD index for a streaming level
  **/
  public function ClientUpdateLevelStreamingStatus(PackageName : unreal.FName, bNewShouldBeLoaded : Bool, bNewShouldBeVisible : Bool, bNewShouldBlockOnLoad : Bool, LODIndex : unreal.Int32) : Void;
  
  /**
    Notify client that the session is starting
  **/
  public function ClientStartOnlineSession() : Void;
  
  /**
    Notify client that the session is about to start
  **/
  public function ClientEndOnlineSession() : Void;
  
  /**
    Assign Pawn to player, but avoid calling ClientRestart if we have already accepted this pawn
  **/
  public function ClientRetryClientRestart(NewPawn : unreal.APawn) : Void;
  
  /**
    send client localized message id
  **/
  public function ClientReceiveLocalizedMessage(Message : unreal.TSubclassOf<unreal.ULocalMessage>, Switch : unreal.Int32, RelatedPlayerState_1 : unreal.APlayerState, RelatedPlayerState_2 : unreal.APlayerState, OptionalObject : unreal.UObject) : Void;
  
  /**
    acknowledge possession of pawn
  **/
  public function ServerAcknowledgePossession(P : unreal.APawn) : Void;
  
  /**
    change mode of camera
  **/
  public function ServerCamera(NewMode : unreal.FName) : Void;
  
  /**
    Change name of server
  **/
  public function ServerChangeName(S : unreal.FString) : Void;
  
  /**
    Called to notify the server when the client has loaded a new world via seamless traveling
    @param WorldPackageName the name of the world package that was loaded
  **/
  @:final public function ServerNotifyLoadedWorld(WorldPackageName : unreal.FName) : Void;
  
  /**
    Replicate pause request to the server
  **/
  public function ServerPause() : Void;
  
  /**
    Attempts to restart this player, generally called from the client upon respawn request.
  **/
  public function ServerRestartPlayer() : Void;
  
  /**
    When spectating, updates spectator location/rotation and pings the server to make sure spectating should continue.
  **/
  public function ServerSetSpectatorLocation(NewLoc : unreal.FVector, NewRot : unreal.FRotator) : Void;
  
  /**
    Tells the server to make sure the possessed pawn is in sync with the client.
  **/
  public function ServerCheckClientPossession() : Void;
  
  /**
    Reliable version of ServerCheckClientPossession to be used when there is no likely danger of spamming the network.
  **/
  public function ServerCheckClientPossessionReliable() : Void;
  
  /**
    Notifies the server that the client has ticked gameplay code, and should no longer get the extended "still loading" timeout grace period
  **/
  public function ServerShortTimeout() : Void;
  
  /**
    Called when the client adds/removes a streamed level
    the server will only replicate references to Actors in visible levels so that it's impossible to send references to
    Actors the client has not initialized
    @param PackageName the name of the package for the level whose status changed
  **/
  @:final public function ServerUpdateLevelVisibility(PackageName : unreal.FName, bIsVisible : Bool) : Void;
  
  /**
    Used by client to request server to confirm current viewtarget (server will respond with ClientSetViewTarget() ).
  **/
  public function ServerVerifyViewTarget() : Void;
  
  /**
    Move camera to next player on round ended or spectating
  **/
  public function ServerViewNextPlayer() : Void;
  
  /**
    Move camera to previous player on round ended or spectating
  **/
  public function ServerViewPrevPlayer() : Void;
  
  /**
    @todo document
  **/
  public function ClientTeamMessage(SenderPlayerState : unreal.APlayerState, S : unreal.FString, Type : unreal.FName, MsgLifeTime : unreal.Float32) : Void;
  
  /**
    Used by UGameplayDebuggingControllerComponent to replicate messages for AI debugging in network games.
  **/
  public function ServerToggleAILogging() : Void;
  
  /**
    Add Pitch (look up) input. This value is multiplied by InputPitchScale.
    @param Val Amount to add to Pitch. This value is multiplied by InputPitchScale.
  **/
  public function AddPitchInput(Val : unreal.Float32) : Void;
  
  /**
    Add Yaw (turn) input. This value is multiplied by InputYawScale.
    @param Val Amount to add to Yaw. This value is multiplied by InputYawScale.
  **/
  public function AddYawInput(Val : unreal.Float32) : Void;
  
  /**
    Add Roll input. This value is multiplied by InputRollScale.
    @param Val Amount to add to Roll. This value is multiplied by InputRollScale.
  **/
  public function AddRollInput(Val : unreal.Float32) : Void;
  
  /**
    Returns true if the given key/button is pressed on the input of the controller (if present)
  **/
  @:thisConst @:final public function IsInputKeyDown(Key : unreal.inputcore.FKey) : Bool;
  
  /**
    Returns true if the given key/button was up last frame and down this frame.
  **/
  @:thisConst @:final public function WasInputKeyJustPressed(Key : unreal.inputcore.FKey) : Bool;
  
  /**
    Returns true if the given key/button was down last frame and up this frame.
  **/
  @:thisConst @:final public function WasInputKeyJustReleased(Key : unreal.inputcore.FKey) : Bool;
  
  /**
    Returns the analog value for the given key/button.  If analog isn't supported, returns 1 for down and 0 for up.
  **/
  @:thisConst @:final public function GetInputAnalogKeyState(Key : unreal.inputcore.FKey) : unreal.Float32;
  
  /**
    Returns the vector value for the given key/button.
  **/
  @:thisConst @:final public function GetInputVectorKeyState(Key : unreal.inputcore.FKey) : unreal.FVector;
  
  /**
    Retrieves the X and Y screen coordinates of the specified touch key. Returns false if the touch index is not down
  **/
  @:thisConst @:final public function GetInputTouchState(FingerIndex : unreal.inputcore.ETouchIndex, LocationX : unreal.Float32, LocationY : unreal.Float32, bIsCurrentlyPressed : Bool) : Void;
  
  /**
    Retrieves the current motion state of the player's input device
  **/
  @:thisConst @:final public function GetInputMotionState(Tilt : unreal.PRef<unreal.FVector>, RotationRate : unreal.PRef<unreal.FVector>, Gravity : unreal.PRef<unreal.FVector>, Acceleration : unreal.PRef<unreal.FVector>) : Void;
  
  /**
    Retrieves the X and Y screen coordinates of the mouse cursor. Returns false if there is no associated mouse device
  **/
  @:thisConst @:final public function GetMousePosition(LocationX : unreal.Float32, LocationY : unreal.Float32) : Bool;
  
  /**
    Returns how long the given key/button has been down.  Returns 0 if it's up or it just went down this frame.
  **/
  @:thisConst @:final public function GetInputKeyTimeDown(Key : unreal.inputcore.FKey) : unreal.Float32;
  
  /**
    Retrieves how far the mouse moved this frame.
  **/
  @:thisConst @:final public function GetInputMouseDelta(DeltaX : unreal.Float32, DeltaY : unreal.Float32) : Void;
  
  /**
    Retrieves the X and Y displacement of the given analog stick.
  **/
  @:thisConst @:final public function GetInputAnalogStickState(WhichStick : unreal.EControllerAnalogStick, StickX : unreal.Float32, StickY : unreal.Float32) : Void;
  
  /**
    Activates a new touch interface for this player controller
  **/
  public function ActivateTouchInterface(NewTouchInterface : unreal.UTouchInterface) : Void;
  
  /**
    Set the virtual joystick visibility.
  **/
  public function SetVirtualJoystickVisibility(bVisible : Bool) : Void;
  
  /**
    Change Camera mode
    @param       New camera mode to set
  **/
  public function Camera(NewMode : unreal.FName) : Void;
  
  /**
    Set the view target blending with variable control
    @param NewViewTarget - new actor to set as view target
    @param BlendTime - time taken to blend
    @param BlendFunc - Cubic, Linear etc functions for blending
    @param BlendExp -  Exponent, used by certain blend functions to control the shape of the curve.
    @param bLockOutgoing - If true, lock outgoing viewtarget to last frame's camera position for the remainder of the blend.
  **/
  public function SetViewTargetWithBlend(NewViewTarget : unreal.AActor, BlendTime : unreal.Float32, BlendFunc : unreal.EViewTargetBlendFunction, BlendExp : unreal.Float32, bLockOutgoing : Bool) : Void;
  
  /**
    Used to override the default positioning of the audio listener
    
    @param AttachToComponent Optional component to attach the audio listener to
    @param Location Depending on whether Component is attached this is either an offset from its location or an absolute position
    @param Rotation Depending on whether Component is attached this is either an offset from its rotation or an absolute rotation
  **/
  @:final public function SetAudioListenerOverride(AttachToComponent : unreal.USceneComponent, Location : unreal.FVector, Rotation : unreal.FRotator) : Void;
  
  /**
    Clear any overrides that have been applied to audio listener
  **/
  @:final public function ClearAudioListenerOverride() : Void;
  
  /**
    Server/SP only function for changing whether the player is in cinematic mode.  Updates values of various state variables, then replicates the call to the client
    to sync the current cinematic mode.
    @param       bInCinematicMode        specify true if the player is entering cinematic mode; false if the player is leaving cinematic mode.
    @param       bHidePlayer                     specify true to hide the player's pawn (only relevant if bInCinematicMode is true)
    @param       bAffectsHUD                     specify true if we should show/hide the HUD to match the value of bCinematicMode
    @param       bAffectsMovement        specify true to disable movement in cinematic mode, enable it when leaving
    @param       bAffectsTurning         specify true to disable turning in cinematic mode or enable it when leaving
  **/
  public function SetCinematicMode(bInCinematicMode : Bool, bHidePlayer : Bool, bAffectsHUD : Bool, bAffectsMovement : Bool, bAffectsTurning : Bool) : Void;
  
  /**
    Notify from server that Visual Logger is recording, to show that information on client about possible performance issues
  **/
  public function OnServerStartedVisualLogger(bIsLogging : Bool) : Void;
  
  /**
    Get the Pawn used when spectating. NULL when not spectating.
  **/
  @:thisConst @:final public function GetSpectatorPawn() : unreal.ASpectatorPawn;
  
  /**
    Returns the location the PlayerController is focused on.
    If there is a possessed Pawn, returns the Pawn's location.
    If there is a spectator Pawn, returns that Pawn's location.
    Otherwise, returns the PlayerController's spawn location (usually the last known Pawn location after it has died).
  **/
  @:thisConst public function GetFocalLocation() : unreal.FVector;
  
}
