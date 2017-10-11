.class public Lcom/cyanogenmod/settings/notification/ZenModeSettings;
.super Lcom/cyanogenmod/settings/notification/ZenModeSettingsBase;
.source "ZenModeSettings.java"

# interfaces
.implements Lcom/cyanogenmod/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/settings/notification/ZenModeSettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/cyanogenmod/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mPrioritySettings:Landroid/preference/Preference;

.field private mZenAccess:Landroid/preference/Preference;


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/cyanogenmod/settings/notification/ZenModeSettings;->allKeyTitles(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/cyanogenmod/settings/notification/ZenModeSettings$1;

    invoke-direct {v0}, Lcom/cyanogenmod/settings/notification/ZenModeSettings$1;-><init>()V

    .line 118
    sput-object v0, Lcom/cyanogenmod/settings/notification/ZenModeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/cyanogenmod/settings/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method private static allKeyTitles(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 107
    .local v0, "rt":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string/jumbo v1, "priority_settings"

    const v2, 0x7f0c0d65

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    const-string/jumbo v1, "automation_settings"

    const v2, 0x7f0c0d66

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    return-object v0
.end method

.method private refreshZenAccess()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method private updateControls()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/cyanogenmod/settings/notification/ZenModeSettings;->updatePrioritySettingsSummary()V

    .line 83
    return-void
.end method

.method private updatePrioritySettingsSummary()V
    .locals 3

    .prologue
    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v1, 0x7f0c0dbf

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v1, p0, Lcom/cyanogenmod/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-eqz v1, :cond_0

    .line 91
    const v1, 0x7f0c0367

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/cyanogenmod/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v1, :cond_1

    .line 94
    const v1, 0x7f0c0368

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/cyanogenmod/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/cyanogenmod/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eqz v1, :cond_3

    .line 97
    :cond_2
    const v1, 0x7f0c0369

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_3
    iget-object v1, p0, Lcom/cyanogenmod/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v1, :cond_4

    .line 100
    const v1, 0x7f0c036a

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_4
    iget-object v1, p0, Lcom/cyanogenmod/settings/notification/ZenModeSettings;->mPrioritySettings:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/cyanogenmod/settings/Utils;->join(Landroid/content/res/Resources;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 114
    const v0, 0x7f0c0cbf

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x4c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/cyanogenmod/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v1, 0x7f080079

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/notification/ZenModeSettings;->addPreferencesFromResource(I)V

    .line 50
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notification/ZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 52
    .local v0, "root":Landroid/preference/PreferenceScreen;
    const-string/jumbo v1, "priority_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/cyanogenmod/settings/notification/ZenModeSettings;->mPrioritySettings:Landroid/preference/Preference;

    .line 53
    iget-object v1, p0, Lcom/cyanogenmod/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cyanogenmod/settings/notification/ZenModeSettings;->isScheduleSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    const-string/jumbo v1, "automation_settings"

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/notification/ZenModeSettings;->removePreference(Ljava/lang/String;)V

    .line 57
    :cond_0
    const-string/jumbo v1, "manage_zen_access"

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/notification/ZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/cyanogenmod/settings/notification/ZenModeSettings;->mZenAccess:Landroid/preference/Preference;

    .line 58
    invoke-direct {p0}, Lcom/cyanogenmod/settings/notification/ZenModeSettings;->refreshZenAccess()V

    .line 46
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/cyanogenmod/settings/notification/ZenModeSettingsBase;->onResume()V

    .line 64
    invoke-direct {p0}, Lcom/cyanogenmod/settings/notification/ZenModeSettings;->updateControls()V

    .line 65
    invoke-direct {p0}, Lcom/cyanogenmod/settings/notification/ZenModeSettings;->refreshZenAccess()V

    .line 62
    return-void
.end method

.method protected onZenModeChanged()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/cyanogenmod/settings/notification/ZenModeSettings;->updateControls()V

    .line 74
    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/cyanogenmod/settings/notification/ZenModeSettings;->updateControls()V

    .line 79
    return-void
.end method
