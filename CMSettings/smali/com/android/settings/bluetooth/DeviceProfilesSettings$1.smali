.class Lcom/cyanogenmod/settings/bluetooth/DeviceProfilesSettings$1;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;

.field final synthetic val$device:Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDevice;

.field final synthetic val$profile:Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothProfile;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDevice;Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;
    .param p2, "val$device"    # Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDevice;
    .param p3, "val$profile"    # Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/cyanogenmod/settings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;

    iput-object p2, p0, Lcom/cyanogenmod/settings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDevice;

    iput-object p3, p0, Lcom/cyanogenmod/settings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x2

    .line 298
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/cyanogenmod/settings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/cyanogenmod/settings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 300
    iget-object v0, p0, Lcom/cyanogenmod/settings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothProfile;

    iget-object v1, p0, Lcom/cyanogenmod/settings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 301
    iget-object v0, p0, Lcom/cyanogenmod/settings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothProfile;

    instance-of v0, v0, Lcom/cyanogenmod/settingslib/bluetooth/MapProfile;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/cyanogenmod/settings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/settings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothProfile;

    instance-of v0, v0, Lcom/cyanogenmod/settingslib/bluetooth/PbapServerProfile;

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/cyanogenmod/settings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/cyanogenmod/settingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/cyanogenmod/settings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;

    iget-object v1, p0, Lcom/cyanogenmod/settings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;

    iget-object v2, p0, Lcom/cyanogenmod/settings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->-wrap0(Lcom/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v2, p0, Lcom/cyanogenmod/settings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-static {v0, v1, v2}, Lcom/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->-wrap1(Lcom/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;Landroid/widget/CheckBox;Lcom/cyanogenmod/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 296
    return-void
.end method
