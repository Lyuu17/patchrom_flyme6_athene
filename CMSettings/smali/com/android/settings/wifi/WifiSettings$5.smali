.class Lcom/cyanogenmod/settings/wifi/WifiSettings$5;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Lcom/cyanogenmod/settings/LinkifyUtils$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/wifi/WifiSettings;->setOffMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/wifi/WifiSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/wifi/WifiSettings;

    .prologue
    .line 754
    iput-object p1, p0, Lcom/cyanogenmod/settings/wifi/WifiSettings$5;->this$0:Lcom/cyanogenmod/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 758
    iget-object v1, p0, Lcom/cyanogenmod/settings/wifi/WifiSettings$5;->this$0:Lcom/cyanogenmod/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/cyanogenmod/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/SettingsActivity;

    .line 759
    .local v0, "activity":Lcom/cyanogenmod/settings/SettingsActivity;
    const-class v1, Lcom/cyanogenmod/settings/location/ScanningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 760
    const v3, 0x7f0c0836

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    .line 759
    invoke-virtual/range {v0 .. v6}, Lcom/cyanogenmod/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 756
    return-void
.end method
