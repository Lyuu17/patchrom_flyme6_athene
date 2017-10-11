.class Lcom/cyanogenmod/settings/ConfirmDeviceCredentialBaseActivity$1;
.super Ljava/lang/Object;
.source "ConfirmDeviceCredentialBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/ConfirmDeviceCredentialBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/ConfirmDeviceCredentialBaseActivity;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/ConfirmDeviceCredentialBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/ConfirmDeviceCredentialBaseActivity;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/cyanogenmod/settings/ConfirmDeviceCredentialBaseActivity$1;->this$0:Lcom/cyanogenmod/settings/ConfirmDeviceCredentialBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cyanogenmod/settings/ConfirmDeviceCredentialBaseActivity$1;->this$0:Lcom/cyanogenmod/settings/ConfirmDeviceCredentialBaseActivity;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/ConfirmDeviceCredentialBaseActivity;->onEnterAnimationComplete()V

    .line 114
    return-void
.end method
