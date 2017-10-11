.class Lcom/cyanogenmod/settings/cyanogenmod/LiveLockScreenSettings$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LiveLockScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/cyanogenmod/LiveLockScreenSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/cyanogenmod/LiveLockScreenSettings;


# direct methods
.method private constructor <init>(Lcom/cyanogenmod/settings/cyanogenmod/LiveLockScreenSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/cyanogenmod/LiveLockScreenSettings;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/cyanogenmod/settings/cyanogenmod/LiveLockScreenSettings$PackageReceiver;->this$0:Lcom/cyanogenmod/settings/cyanogenmod/LiveLockScreenSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyanogenmod/settings/cyanogenmod/LiveLockScreenSettings;Lcom/cyanogenmod/settings/cyanogenmod/LiveLockScreenSettings$PackageReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/cyanogenmod/LiveLockScreenSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/cyanogenmod/LiveLockScreenSettings$PackageReceiver;-><init>(Lcom/cyanogenmod/settings/cyanogenmod/LiveLockScreenSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 286
    const-string/jumbo v0, "PackageReceiver.onReceive"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/cyanogenmod/settings/cyanogenmod/LiveLockScreenSettings;->-wrap0(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/LiveLockScreenSettings$PackageReceiver;->this$0:Lcom/cyanogenmod/settings/cyanogenmod/LiveLockScreenSettings;

    invoke-static {v0}, Lcom/cyanogenmod/settings/cyanogenmod/LiveLockScreenSettings;->-wrap1(Lcom/cyanogenmod/settings/cyanogenmod/LiveLockScreenSettings;)V

    .line 285
    return-void
.end method
