.class Lcom/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings$1;
.super Ljava/lang/Object;
.source "SavedAccessPointsWifiSettings.java"

# interfaces
.implements Lcom/cyanogenmod/settings/DraggableSortListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings$1;->this$0:Lcom/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 9
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 71
    if-ne p1, p2, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object v7, p0, Lcom/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings$1;->this$0:Lcom/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v7}, Lcom/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 74
    .local v6, "preferences":Landroid/preference/PreferenceScreen;
    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    .line 77
    .local v3, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    .local v1, "aps":Ljava/util/List;, "Ljava/util/List<Lcom/cyanogenmod/settings/wifi/AccessPointPreference;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 79
    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/cyanogenmod/settings/wifi/AccessPointPreference;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cyanogenmod/settings/wifi/AccessPointPreference;

    .line 82
    .local v5, "o":Lcom/cyanogenmod/settings/wifi/AccessPointPreference;
    invoke-interface {v1, p2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 85
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    .line 86
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cyanogenmod/settings/wifi/AccessPointPreference;

    invoke-virtual {v7}, Lcom/cyanogenmod/settings/wifi/AccessPointPreference;->getAccessPoint()Lcom/cyanogenmod/settingslib/wifi/AccessPoint;

    move-result-object v0

    .line 87
    .local v0, "ap":Lcom/cyanogenmod/settingslib/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/cyanogenmod/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 88
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    sub-int v7, v3, v4

    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 90
    iget-object v7, p0, Lcom/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings$1;->this$0:Lcom/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-static {v7}, Lcom/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->-get2(Lcom/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 85
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 94
    .end local v0    # "ap":Lcom/cyanogenmod/settingslib/wifi/AccessPoint;
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    iget-object v7, p0, Lcom/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings$1;->this$0:Lcom/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-static {v7}, Lcom/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->-get2(Lcom/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 95
    iget-object v7, p0, Lcom/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings$1;->this$0:Lcom/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->-set0(Lcom/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;Z)Z

    .line 98
    iget-object v7, p0, Lcom/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings$1;->this$0:Lcom/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-static {v7}, Lcom/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->-wrap1(Lcom/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;)V

    .line 70
    return-void
.end method
