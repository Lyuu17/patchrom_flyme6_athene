.class Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings$7;
.super Landroid/preference/SwitchPreference;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroid/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings$7;->this$0:Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 2

    .prologue
    .line 383
    iget-object v1, p0, Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings$7;->this$0:Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;

    iget-object v0, p0, Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings$7;->this$0:Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;->-get0(Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;->-set0(Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;Z)Z

    .line 384
    iget-object v0, p0, Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings$7;->this$0:Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;->-get0(Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings$7;->this$0:Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;->-wrap5(Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;)V

    .line 389
    :goto_1
    iget-object v0, p0, Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings$7;->this$0:Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;->-get0(Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings$7;->setChecked(Z)V

    .line 382
    return-void

    .line 383
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings$7;->this$0:Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;->-wrap6(Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;)V

    goto :goto_1
.end method
