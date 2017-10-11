.class Lcom/cyanogenmod/settings/HomeSettings$HomePackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/HomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomePackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/HomeSettings;


# direct methods
.method private constructor <init>(Lcom/cyanogenmod/settings/HomeSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/HomeSettings;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/cyanogenmod/settings/HomeSettings$HomePackageReceiver;->this$0:Lcom/cyanogenmod/settings/HomeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyanogenmod/settings/HomeSettings;Lcom/cyanogenmod/settings/HomeSettings$HomePackageReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/HomeSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/HomeSettings$HomePackageReceiver;-><init>(Lcom/cyanogenmod/settings/HomeSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 77
    iget-object v0, p0, Lcom/cyanogenmod/settings/HomeSettings$HomePackageReceiver;->this$0:Lcom/cyanogenmod/settings/HomeSettings;

    invoke-static {v0}, Lcom/cyanogenmod/settings/HomeSettings;->-wrap0(Lcom/cyanogenmod/settings/HomeSettings;)V

    .line 78
    invoke-static {p1}, Lcom/cyanogenmod/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/cyanogenmod/settings/search/Index;

    move-result-object v0

    .line 79
    const-class v1, Lcom/cyanogenmod/settings/HomeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1, v2, v2}, Lcom/cyanogenmod/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 76
    return-void
.end method
