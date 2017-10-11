.class public Lcom/cyanogenmod/settings/applications/AppStatePowerBridge;
.super Lcom/cyanogenmod/settings/applications/AppStateBaseBridge;
.source "AppStatePowerBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/settings/applications/AppStatePowerBridge$HighPowerState;,
        Lcom/cyanogenmod/settings/applications/AppStatePowerBridge$1;
    }
.end annotation


# static fields
.field public static final FILTER_POWER_WHITELISTED:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppFilter;


# instance fields
.field private final mBackend:Lcom/cyanogenmod/settings/fuelgauge/PowerWhitelistBackend;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$CompoundFilter;

    .line 59
    sget-object v1, Lcom/cyanogenmod/settingslib/applications/ApplicationsState;->FILTER_PERSONAL_WITHOUT_DISABLED_UNTIL_USED:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppFilter;

    new-instance v2, Lcom/cyanogenmod/settings/applications/AppStatePowerBridge$1;

    invoke-direct {v2}, Lcom/cyanogenmod/settings/applications/AppStatePowerBridge$1;-><init>()V

    .line 58
    invoke-direct {v0, v1, v2}, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppFilter;Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppFilter;)V

    sput-object v0, Lcom/cyanogenmod/settings/applications/AppStatePowerBridge;->FILTER_POWER_WHITELISTED:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppFilter;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/cyanogenmod/settingslib/applications/ApplicationsState;Lcom/cyanogenmod/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 1
    .param p1, "appState"    # Lcom/cyanogenmod/settingslib/applications/ApplicationsState;
    .param p2, "callback"    # Lcom/cyanogenmod/settings/applications/AppStateBaseBridge$Callback;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/cyanogenmod/settings/applications/AppStateBaseBridge;-><init>(Lcom/cyanogenmod/settingslib/applications/ApplicationsState;Lcom/cyanogenmod/settings/applications/AppStateBaseBridge$Callback;)V

    .line 31
    invoke-static {}, Lcom/cyanogenmod/settings/fuelgauge/PowerWhitelistBackend;->getInstance()Lcom/cyanogenmod/settings/fuelgauge/PowerWhitelistBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/settings/applications/AppStatePowerBridge;->mBackend:Lcom/cyanogenmod/settings/fuelgauge/PowerWhitelistBackend;

    .line 33
    return-void
.end method


# virtual methods
.method protected loadAllExtraInfo()V
    .locals 6

    .prologue
    .line 39
    iget-object v4, p0, Lcom/cyanogenmod/settings/applications/AppStatePowerBridge;->mAppSession:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v4}, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v2

    .line 40
    .local v2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 41
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 42
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    .line 43
    .local v1, "app":Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;
    iget-object v4, p0, Lcom/cyanogenmod/settings/applications/AppStatePowerBridge;->mBackend:Lcom/cyanogenmod/settings/fuelgauge/PowerWhitelistBackend;

    iget-object v5, v1, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/cyanogenmod/settings/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 43
    :goto_1
    iput-object v4, v1, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    .line 41
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    :cond_0
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 38
    .end local v1    # "app":Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;
    :cond_1
    return-void
.end method

.method protected updateExtraInfo(Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 1
    .param p1, "app"    # Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/AppStatePowerBridge;->mBackend:Lcom/cyanogenmod/settings/fuelgauge/PowerWhitelistBackend;

    invoke-virtual {v0, p2}, Lcom/cyanogenmod/settings/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    iput-object v0, p1, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    .line 49
    return-void

    .line 50
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method
