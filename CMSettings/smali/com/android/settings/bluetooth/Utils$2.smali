.class final Lcom/cyanogenmod/settings/bluetooth/Utils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/bluetooth/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothManagerInitialized(Landroid/content/Context;Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 2
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "bluetoothManager"    # Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothManager;

    .prologue
    .line 140
    invoke-virtual {p2}, Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    .line 141
    new-instance v1, Lcom/cyanogenmod/settings/bluetooth/DockService$DockBluetoothCallback;

    invoke-direct {v1, p1}, Lcom/cyanogenmod/settings/bluetooth/DockService$DockBluetoothCallback;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/cyanogenmod/settingslib/bluetooth/BluetoothCallback;)V

    .line 142
    invoke-static {}, Lcom/cyanogenmod/settings/bluetooth/Utils;->-get0()Lcom/cyanogenmod/settingslib/bluetooth/Utils$ErrorListener;

    move-result-object v0

    invoke-static {v0}, Lcom/cyanogenmod/settingslib/bluetooth/Utils;->setErrorListener(Lcom/cyanogenmod/settingslib/bluetooth/Utils$ErrorListener;)V

    .line 139
    return-void
.end method
