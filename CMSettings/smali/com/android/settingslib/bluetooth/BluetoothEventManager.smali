.class public final Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$Handler;,
        Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;,
        Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;,
        Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;,
        Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;,
        Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;,
        Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$NameChangedHandler;,
        Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;,
        Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$ClassChangedHandler;,
        Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$UuidChangedHandler;,
        Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$PairingCancelHandler;,
        Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$DockEventHandler;,
        Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$1;
    }
.end annotation


# instance fields
.field private final mAdapterIntentFilter:Landroid/content/IntentFilter;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/cyanogenmod/settingslib/bluetooth/BluetoothCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private final mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalAdapter:Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileIntentFilter:Landroid/content/IntentFilter;

.field private mProfileManager:Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mReceiverHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic -get1(Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;)Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get3(Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;)Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;)Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 1

    iget-object v0, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->dispatchConnectionStateChanged(Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDevice;I)V

    return-void
.end method

.method constructor <init>(Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;)V
    .locals 5
    .param p1, "adapter"    # Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothAdapter;
    .param p2, "deviceManager"    # Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    .line 137
    new-instance v0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$1;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$1;-><init>(Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;)V

    iput-object v0, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    iput-object p1, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 78
    iput-object p2, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    .line 82
    iput-object p3, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    .line 85
    const-string/jumbo v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    new-instance v1, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;

    invoke-direct {v1, p0, v4}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;-><init>(Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 87
    const-string/jumbo v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 88
    new-instance v1, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;

    invoke-direct {v1, p0, v4}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;-><init>(Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;)V

    .line 87
    invoke-direct {p0, v0, v1}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 91
    const-string/jumbo v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    new-instance v1, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;Z)V

    invoke-direct {p0, v0, v1}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 92
    const-string/jumbo v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    new-instance v1, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;Z)V

    invoke-direct {p0, v0, v1}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 93
    const-string/jumbo v0, "android.bluetooth.device.action.FOUND"

    new-instance v1, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    invoke-direct {v1, p0, v4}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 94
    const-string/jumbo v0, "android.bluetooth.device.action.DISAPPEARED"

    new-instance v1, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;

    invoke-direct {v1, p0, v4}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;-><init>(Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 95
    const-string/jumbo v0, "android.bluetooth.device.action.NAME_CHANGED"

    new-instance v1, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$NameChangedHandler;

    invoke-direct {v1, p0, v4}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$NameChangedHandler;-><init>(Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$NameChangedHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 96
    const-string/jumbo v0, "android.bluetooth.device.action.ALIAS_CHANGED"

    new-instance v1, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$NameChangedHandler;

    invoke-direct {v1, p0, v4}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$NameChangedHandler;-><init>(Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$NameChangedHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 99
    const-string/jumbo v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    new-instance v1, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;

    invoke-direct {v1, p0, v4}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 100
    const-string/jumbo v0, "android.bluetooth.device.action.PAIRING_CANCEL"

    new-instance v1, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$PairingCancelHandler;

    invoke-direct {v1, p0, v4}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$PairingCancelHandler;-><init>(Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$PairingCancelHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 103
    const-string/jumbo v0, "android.bluetooth.device.action.CLASS_CHANGED"

    new-instance v1, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$ClassChangedHandler;

    invoke-direct {v1, p0, v4}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$ClassChangedHandler;-><init>(Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$ClassChangedHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 104
    const-string/jumbo v0, "android.bluetooth.device.action.UUID"

    new-instance v1, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$UuidChangedHandler;

    invoke-direct {v1, p0, v4}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$UuidChangedHandler;-><init>(Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$UuidChangedHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 107
    const-string/jumbo v0, "android.intent.action.DOCK_EVENT"

    new-instance v1, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$DockEventHandler;

    invoke-direct {v1, p0, v4}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$DockEventHandler;-><init>(Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$DockEventHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 109
    iget-object v0, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 76
    return-void
.end method

.method private addHandler(Ljava/lang/String;Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$Handler;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private dispatchConnectionStateChanged(Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 4
    .param p1, "cachedDevice"    # Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 220
    iget-object v3, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v3

    .line 221
    :try_start_0
    iget-object v2, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothCallback;

    .line 222
    .local v0, "callback":Lcom/cyanogenmod/settingslib/bluetooth/BluetoothCallback;
    invoke-interface {v0, p1, p2}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothCallback;->onConnectionStateChanged(Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDevice;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 220
    .end local v0    # "callback":Lcom/cyanogenmod/settingslib/bluetooth/BluetoothCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "callback$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 219
    return-void
.end method


# virtual methods
.method addProfileHandler(Ljava/lang/String;Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager$Handler;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method dispatchDeviceAdded(Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 4
    .param p1, "cachedDevice"    # Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 228
    iget-object v3, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v3

    .line 229
    :try_start_0
    iget-object v2, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothCallback;

    .line 230
    .local v0, "callback":Lcom/cyanogenmod/settingslib/bluetooth/BluetoothCallback;
    invoke-interface {v0, p1}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothCallback;->onDeviceAdded(Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 228
    .end local v0    # "callback":Lcom/cyanogenmod/settingslib/bluetooth/BluetoothCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "callback$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 227
    return-void
.end method

.method readPairedDevices()Z
    .locals 8

    .prologue
    .line 382
    iget-object v5, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 383
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-nez v0, :cond_0

    .line 384
    const/4 v5, 0x0

    return v5

    .line 387
    :cond_0
    const/4 v4, 0x0

    .line 388
    .local v4, "deviceAdded":Z
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "device$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 389
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v5, v2}, Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 390
    .local v1, "cachedDevice":Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_1

    .line 391
    iget-object v5, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v6, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v7, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v5, v6, v7, v2}, Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 392
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 393
    const/4 v4, 0x1

    goto :goto_0

    .line 397
    .end local v1    # "cachedDevice":Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDevice;
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    return v4
.end method

.method public registerCallback(Lcom/cyanogenmod/settingslib/bluetooth/BluetoothCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/cyanogenmod/settingslib/bluetooth/BluetoothCallback;

    .prologue
    .line 125
    iget-object v1, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 124
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method registerProfileIntentReceiver()V
    .locals 5

    .prologue
    .line 113
    iget-object v0, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mReceiverHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 112
    return-void
.end method

.method setProfileManager(Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothProfileManager;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 71
    return-void
.end method

.method public unregisterCallback(Lcom/cyanogenmod/settingslib/bluetooth/BluetoothCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/cyanogenmod/settingslib/bluetooth/BluetoothCallback;

    .prologue
    .line 132
    iget-object v1, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 131
    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
