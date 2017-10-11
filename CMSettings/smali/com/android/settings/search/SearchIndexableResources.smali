.class public final Lcom/cyanogenmod/settings/search/SearchIndexableResources;
.super Ljava/lang/Object;
.source "SearchIndexableResources.java"


# static fields
.field public static NO_DATA_RES_ID:I

.field private static sResMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const v11, 0x7f0200a9

    const v10, 0x7f0200a3

    const v9, 0x7f0200d8

    const v8, 0x7f0200e7

    const v7, 0x7f0200d0

    .line 65
    const/4 v0, 0x0

    sput v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    sput-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    .line 71
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 72
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 73
    const-class v3, Lcom/cyanogenmod/settings/wifi/WifiSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 74
    sget v4, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 75
    const-class v5, Lcom/cyanogenmod/settings/wifi/WifiSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-direct {v2, v3, v4, v5, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 71
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 79
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 80
    const-class v3, Lcom/cyanogenmod/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 82
    const-class v4, Lcom/cyanogenmod/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 81
    const v5, 0x7f08006d

    .line 79
    invoke-direct {v2, v3, v5, v4, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 78
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 86
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 87
    const-class v3, Lcom/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 88
    sget v4, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 89
    const-class v5, Lcom/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-direct {v2, v3, v4, v5, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 85
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 93
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 94
    const-class v3, Lcom/cyanogenmod/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 95
    sget v4, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 96
    const-class v5, Lcom/cyanogenmod/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 97
    const v6, 0x7f0200b0

    .line 93
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 92
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/sim/SimSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 100
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 101
    const-class v3, Lcom/cyanogenmod/settings/sim/SimSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 102
    sget v4, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 103
    const-class v5, Lcom/cyanogenmod/settings/sim/SimSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 104
    const v6, 0x7f0200da

    .line 100
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 99
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 107
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 108
    const-class v3, Lcom/cyanogenmod/settings/DataUsageSummary;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 109
    sget v4, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 110
    const-class v5, Lcom/cyanogenmod/settings/DataUsageSummary;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 111
    const v6, 0x7f0200b6

    .line 107
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 106
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/net/DataUsageMeteredSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 114
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 115
    const-class v3, Lcom/cyanogenmod/settings/net/DataUsageMeteredSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 116
    sget v4, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 117
    const-class v5, Lcom/cyanogenmod/settings/net/DataUsageMeteredSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 118
    const v6, 0x7f0200b6

    .line 114
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 113
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 121
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 122
    const-class v3, Lcom/cyanogenmod/settings/WirelessSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 123
    sget v4, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 124
    const-class v5, Lcom/cyanogenmod/settings/WirelessSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 125
    const v6, 0x7f0200c9

    .line 121
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 120
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/SecuritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 128
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 129
    const-class v3, Lcom/cyanogenmod/settings/SecuritySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 130
    sget v4, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 131
    const-class v5, Lcom/cyanogenmod/settings/SecuritySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 128
    invoke-direct {v2, v3, v4, v5, v9}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 127
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/HomeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 135
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 136
    const-class v3, Lcom/cyanogenmod/settings/HomeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 137
    sget v4, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 138
    const-class v5, Lcom/cyanogenmod/settings/HomeSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 139
    const v6, 0x7f0200c0

    .line 135
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 134
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/DisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 142
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 143
    const-class v3, Lcom/cyanogenmod/settings/DisplaySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 144
    sget v4, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 145
    const-class v5, Lcom/cyanogenmod/settings/DisplaySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 146
    const v6, 0x7f0200bc

    .line 142
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 141
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 149
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 150
    const-class v3, Lcom/cyanogenmod/settings/WallpaperTypeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 151
    sget v4, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 152
    const-class v5, Lcom/cyanogenmod/settings/WallpaperTypeSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 153
    const v6, 0x7f0200bc

    .line 149
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 148
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/notification/SoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 156
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 157
    const-class v3, Lcom/cyanogenmod/settings/notification/SoundSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 158
    sget v4, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 159
    const-class v5, Lcom/cyanogenmod/settings/notification/SoundSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 156
    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 155
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/notification/NotificationManagerSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 163
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 164
    const-class v3, Lcom/cyanogenmod/settings/notification/NotificationManagerSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 165
    sget v4, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 166
    const-class v5, Lcom/cyanogenmod/settings/notification/NotificationManagerSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 163
    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 162
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/notification/OtherSoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 170
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 171
    const-class v3, Lcom/cyanogenmod/settings/notification/OtherSoundSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 172
    sget v4, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 173
    const-class v5, Lcom/cyanogenmod/settings/notification/OtherSoundSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 170
    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 169
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/notification/ZenModeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 177
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 178
    const-class v3, Lcom/cyanogenmod/settings/notification/ZenModeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 179
    sget v4, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 180
    const-class v5, Lcom/cyanogenmod/settings/notification/ZenModeSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 177
    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 176
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 184
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 185
    const-class v3, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 187
    const-class v4, Lcom/cyanogenmod/settings/notification/ZenModePrioritySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 186
    const v5, 0x7f080077

    .line 184
    invoke-direct {v2, v3, v5, v4, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 183
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/deviceinfo/StorageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 191
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 192
    const-class v3, Lcom/cyanogenmod/settings/deviceinfo/StorageSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 193
    sget v4, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 194
    const-class v5, Lcom/cyanogenmod/settings/deviceinfo/StorageSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 195
    const v6, 0x7f0200df

    .line 191
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 190
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 198
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 199
    const-class v3, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 201
    const-class v4, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 200
    const v5, 0x7f08003d

    .line 202
    const v6, 0x7f0200ae

    .line 198
    invoke-direct {v2, v3, v5, v4, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 197
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/applications/AdvancedAppSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 205
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 206
    const-class v3, Lcom/cyanogenmod/settings/applications/AdvancedAppSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 208
    const-class v4, Lcom/cyanogenmod/settings/applications/AdvancedAppSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 207
    const v5, 0x7f080006

    .line 205
    invoke-direct {v2, v3, v5, v4, v11}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 204
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/applications/ManageDefaultApps;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 212
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 213
    const-class v3, Lcom/cyanogenmod/settings/applications/ManageDefaultApps;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 214
    sget v4, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 215
    const-class v5, Lcom/cyanogenmod/settings/applications/ManageDefaultApps;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 212
    invoke-direct {v2, v3, v4, v5, v11}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 211
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/users/UserSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 219
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 220
    const-class v3, Lcom/cyanogenmod/settings/users/UserSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 221
    sget v4, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 222
    const-class v5, Lcom/cyanogenmod/settings/users/UserSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 223
    const v6, 0x7f0200cb

    .line 219
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 218
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 226
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 227
    const-class v3, Lcom/cyanogenmod/settings/location/LocationSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 229
    const-class v4, Lcom/cyanogenmod/settings/location/LocationSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 228
    const v5, 0x7f080034

    .line 230
    const v6, 0x7f0200c4

    .line 226
    invoke-direct {v2, v3, v5, v4, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 225
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/location/ScanningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 233
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 234
    const-class v3, Lcom/cyanogenmod/settings/location/ScanningSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 236
    const-class v4, Lcom/cyanogenmod/settings/location/ScanningSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 235
    const v5, 0x7f080033

    .line 237
    const v6, 0x7f0200c4

    .line 233
    invoke-direct {v2, v3, v5, v4, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 232
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/SecuritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 240
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 241
    const-class v3, Lcom/cyanogenmod/settings/SecuritySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 242
    sget v4, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 243
    const-class v5, Lcom/cyanogenmod/settings/SecuritySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 240
    invoke-direct {v2, v3, v4, v5, v9}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 239
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/ScreenPinningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 247
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 248
    const-class v3, Lcom/cyanogenmod/settings/ScreenPinningSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 249
    sget v4, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 250
    const-class v5, Lcom/cyanogenmod/settings/ScreenPinningSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 247
    invoke-direct {v2, v3, v4, v5, v9}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 246
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 254
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 255
    const-class v3, Lcom/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 256
    sget v4, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 257
    const-class v5, Lcom/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 258
    const v6, 0x7f0200c2

    .line 254
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 253
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/PrivacySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 261
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 262
    const-class v3, Lcom/cyanogenmod/settings/PrivacySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 263
    sget v4, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 264
    const-class v5, Lcom/cyanogenmod/settings/PrivacySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 265
    const v6, 0x7f0200ab

    .line 261
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 260
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/DateTimeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 268
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 269
    const-class v3, Lcom/cyanogenmod/settings/DateTimeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 271
    const-class v4, Lcom/cyanogenmod/settings/DateTimeSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 270
    const v5, 0x7f08001b

    .line 272
    const v6, 0x7f0200b8

    .line 268
    invoke-direct {v2, v3, v5, v4, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 267
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 275
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 276
    const-class v3, Lcom/cyanogenmod/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 277
    sget v4, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 278
    const-class v5, Lcom/cyanogenmod/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 279
    const v6, 0x7f0200a5

    .line 275
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 274
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 282
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 283
    const-class v3, Lcom/cyanogenmod/settings/print/PrintSettingsFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 284
    sget v4, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 285
    const-class v5, Lcom/cyanogenmod/settings/print/PrintSettingsFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 286
    const v6, 0x7f0200d3

    .line 282
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 281
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/DevelopmentSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 289
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 290
    const-class v3, Lcom/cyanogenmod/settings/DevelopmentSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 291
    sget v4, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 292
    const-class v5, Lcom/cyanogenmod/settings/DevelopmentSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 293
    const v6, 0x7f0200ba

    .line 289
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 288
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/DeviceInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 296
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 297
    const-class v3, Lcom/cyanogenmod/settings/DeviceInfoSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 298
    sget v4, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 299
    const-class v5, Lcom/cyanogenmod/settings/DeviceInfoSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 296
    invoke-direct {v2, v3, v4, v5, v10}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 295
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/LegalSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 303
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 304
    const-class v3, Lcom/cyanogenmod/settings/LegalSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 305
    sget v4, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 306
    const-class v5, Lcom/cyanogenmod/settings/LegalSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 303
    invoke-direct {v2, v3, v4, v5, v10}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 302
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/WifiCallingSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 310
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 311
    const-class v3, Lcom/cyanogenmod/settings/WifiCallingSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 313
    const-class v4, Lcom/cyanogenmod/settings/WifiCallingSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 312
    const v5, 0x7f08006e

    .line 310
    invoke-direct {v2, v3, v5, v4, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 309
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/ButtonSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 318
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 319
    const-class v3, Lcom/cyanogenmod/settings/ButtonSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 321
    const-class v4, Lcom/cyanogenmod/settings/ButtonSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 320
    const v5, 0x7f080017

    .line 322
    const v6, 0x7f0200b2

    .line 318
    invoke-direct {v2, v3, v5, v4, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 317
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/cyanogenmod/StatusBarSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 325
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 326
    const-class v3, Lcom/cyanogenmod/settings/cyanogenmod/StatusBarSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 328
    const-class v4, Lcom/cyanogenmod/settings/cyanogenmod/StatusBarSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 327
    const v5, 0x7f080059

    .line 329
    const v6, 0x7f0200de

    .line 325
    invoke-direct {v2, v3, v5, v4, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 324
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/cyanogenmod/PrivacySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 332
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 334
    const-class v3, Lcom/cyanogenmod/settings/cyanogenmod/PrivacySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 333
    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 336
    const-class v4, Lcom/cyanogenmod/settings/cyanogenmod/PrivacySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 335
    const v5, 0x7f080043

    .line 337
    const v6, 0x7f0200d5

    .line 332
    invoke-direct {v2, v3, v5, v4, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 331
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/cyanogenmod/settings/cyanogenmod/LockscreenSettingsAlias;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 340
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 342
    const-class v3, Lcom/cyanogenmod/settings/cyanogenmod/LockscreenSettingsAlias;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 341
    invoke-static {v3}, Lcom/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 343
    sget v4, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 344
    const-class v5, Lcom/cyanogenmod/settings/cyanogenmod/LockscreenSettingsAlias;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 345
    const v6, 0x7f0200c6

    .line 340
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 339
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResourceByName(Ljava/lang/String;)Landroid/provider/SearchIndexableResource;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 356
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/SearchIndexableResource;

    return-object v0
.end method

.method public static values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    sget-object v0, Lcom/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
