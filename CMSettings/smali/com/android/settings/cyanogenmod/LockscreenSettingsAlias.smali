.class public Lcom/cyanogenmod/settings/cyanogenmod/LockscreenSettingsAlias;
.super Lcom/cyanogenmod/settings/SecuritySettings;
.source "LockscreenSettingsAlias.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/settings/cyanogenmod/LockscreenSettingsAlias$SecuritySearchIndexProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/cyanogenmod/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/cyanogenmod/settings/cyanogenmod/LockscreenSettingsAlias;->MY_USER_ID:I

    return v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    invoke-static {p0, p1}, Lcom/cyanogenmod/settings/cyanogenmod/LockscreenSettingsAlias;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "dpm"    # Landroid/app/admin/DevicePolicyManager;

    .prologue
    invoke-static {p0, p1, p2}, Lcom/cyanogenmod/settings/cyanogenmod/LockscreenSettingsAlias;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/cyanogenmod/settings/cyanogenmod/LockscreenSettingsAlias$SecuritySearchIndexProvider;

    invoke-direct {v0}, Lcom/cyanogenmod/settings/cyanogenmod/LockscreenSettingsAlias$SecuritySearchIndexProvider;-><init>()V

    .line 39
    sput-object v0, Lcom/cyanogenmod/settings/cyanogenmod/LockscreenSettingsAlias;->SEARCH_INDEX_DATA_PROVIDER:Lcom/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/cyanogenmod/settings/SecuritySettings;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/cyanogenmod/LockscreenSettingsAlias;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 137
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 138
    const-string/jumbo v1, "filter_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    :cond_0
    invoke-super {p0, p1}, Lcom/cyanogenmod/settings/SecuritySettings;->onCreate(Landroid/os/Bundle;)V

    .line 135
    return-void
.end method
