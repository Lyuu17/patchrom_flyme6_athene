.class Lcom/cyanogenmod/settings/accounts/AccountPreferenceBase$1$1;
.super Ljava/lang/Object;
.source "AccountPreferenceBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/accounts/AccountPreferenceBase$1;->onStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cyanogenmod/settings/accounts/AccountPreferenceBase$1;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/accounts/AccountPreferenceBase$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cyanogenmod/settings/accounts/AccountPreferenceBase$1;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/cyanogenmod/settings/accounts/AccountPreferenceBase$1$1;->this$1:Lcom/cyanogenmod/settings/accounts/AccountPreferenceBase$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/cyanogenmod/settings/accounts/AccountPreferenceBase$1$1;->this$1:Lcom/cyanogenmod/settings/accounts/AccountPreferenceBase$1;

    iget-object v0, v0, Lcom/cyanogenmod/settings/accounts/AccountPreferenceBase$1;->this$0:Lcom/cyanogenmod/settings/accounts/AccountPreferenceBase;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/accounts/AccountPreferenceBase;->onSyncStateUpdated()V

    .line 125
    return-void
.end method
