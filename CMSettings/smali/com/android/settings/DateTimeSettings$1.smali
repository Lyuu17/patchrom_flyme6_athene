.class Lcom/cyanogenmod/settings/DateTimeSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/DateTimeSettings;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/DateTimeSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/DateTimeSettings;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/cyanogenmod/settings/DateTimeSettings$1;->this$0:Lcom/cyanogenmod/settings/DateTimeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 364
    iget-object v1, p0, Lcom/cyanogenmod/settings/DateTimeSettings$1;->this$0:Lcom/cyanogenmod/settings/DateTimeSettings;

    invoke-virtual {v1}, Lcom/cyanogenmod/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 365
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 366
    iget-object v1, p0, Lcom/cyanogenmod/settings/DateTimeSettings$1;->this$0:Lcom/cyanogenmod/settings/DateTimeSettings;

    invoke-virtual {v1, v0}, Lcom/cyanogenmod/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 363
    :cond_0
    return-void
.end method
