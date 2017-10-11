.class Lcom/cyanogenmod/settings/accounts/AccountPreferenceBase$1;
.super Ljava/lang/Object;
.source "AccountPreferenceBase.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/accounts/AccountPreferenceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/accounts/AccountPreferenceBase;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/accounts/AccountPreferenceBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/accounts/AccountPreferenceBase;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/cyanogenmod/settings/accounts/AccountPreferenceBase$1;->this$0:Lcom/cyanogenmod/settings/accounts/AccountPreferenceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/cyanogenmod/settings/accounts/AccountPreferenceBase$1;->this$0:Lcom/cyanogenmod/settings/accounts/AccountPreferenceBase;

    invoke-static {v0}, Lcom/cyanogenmod/settings/accounts/AccountPreferenceBase;->-get0(Lcom/cyanogenmod/settings/accounts/AccountPreferenceBase;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cyanogenmod/settings/accounts/AccountPreferenceBase$1$1;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/settings/accounts/AccountPreferenceBase$1$1;-><init>(Lcom/cyanogenmod/settings/accounts/AccountPreferenceBase$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method
