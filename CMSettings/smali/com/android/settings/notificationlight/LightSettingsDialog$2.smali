.class Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog$2;
.super Landroid/os/Handler;
.source "LightSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog$2;->this$0:Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog$2;->this$0:Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;

    invoke-static {v0}, Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;->-wrap0(Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;)V

    .line 264
    return-void
.end method
