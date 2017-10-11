.class Lcom/cyanogenmod/settings/sim/SimSettings$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/sim/SimSettings;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/sim/SimSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/sim/SimSettings;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/cyanogenmod/settings/sim/SimSettings$1;->this$0:Lcom/cyanogenmod/settings/sim/SimSettings;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 2

    .prologue
    .line 174
    iget-object v1, p0, Lcom/cyanogenmod/settings/sim/SimSettings$1;->this$0:Lcom/cyanogenmod/settings/sim/SimSettings;

    invoke-virtual {v1}, Lcom/cyanogenmod/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 175
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/cyanogenmod/settings/sim/SimSettings$1;->this$0:Lcom/cyanogenmod/settings/sim/SimSettings;

    invoke-static {v1}, Lcom/cyanogenmod/settings/sim/SimSettings;->-wrap4(Lcom/cyanogenmod/settings/sim/SimSettings;)V

    goto :goto_0
.end method
