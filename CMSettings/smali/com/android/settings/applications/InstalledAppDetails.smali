.class public Lcom/cyanogenmod/settings/applications/InstalledAppDetails;
.super Lcom/cyanogenmod/settings/applications/AppInfoBase;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/settings/applications/InstalledAppDetails$ToggleProtectedAppComponents;,
        Lcom/cyanogenmod/settings/applications/InstalledAppDetails$MemoryUpdater;,
        Lcom/cyanogenmod/settings/applications/InstalledAppDetails$BatteryUpdater;,
        Lcom/cyanogenmod/settings/applications/InstalledAppDetails$DisableChanger;,
        Lcom/cyanogenmod/settings/applications/InstalledAppDetails$1;,
        Lcom/cyanogenmod/settings/applications/InstalledAppDetails$2;,
        Lcom/cyanogenmod/settings/applications/InstalledAppDetails$3;
    }
.end annotation


# instance fields
.field private final mBackend:Lcom/cyanogenmod/settings/notification/NotificationBackend;

.field private mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mBatteryPreference:Landroid/preference/Preference;

.field private mChartData:Lcom/cyanogenmod/settingslib/net/ChartData;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private final mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/cyanogenmod/settingslib/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mDataPreference:Landroid/preference/Preference;

.field private mDisableAfterUninstall:Z

.field private mForceStopButton:Landroid/widget/Button;

.field private mHeader:Lcom/cyanogenmod/settings/applications/LayoutPreference;

.field private final mHomePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private mLaunchPreference:Landroid/preference/Preference;

.field private mMemoryPreference:Landroid/preference/Preference;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private final mPermissionCallback:Lcom/cyanogenmod/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

.field private mPermissionReceiver:Landroid/content/BroadcastReceiver;

.field private mPermissionsPreference:Landroid/preference/Preference;

.field private mShowUninstalled:Z

.field private mSipper:Lcom/android/internal/os/BatterySipper;

.field protected mStats:Lcom/cyanogenmod/settings/applications/ProcStatsPackageEntry;

.field protected mStatsManager:Lcom/cyanogenmod/settings/applications/ProcStatsData;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mStoragePreference:Landroid/preference/Preference;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z


# direct methods
.method static synthetic -get0(Lcom/cyanogenmod/settings/applications/InstalledAppDetails;)Lcom/android/internal/os/BatteryStatsHelper;
    .locals 1

    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    return-object v0
.end method

.method static synthetic -get1(Lcom/cyanogenmod/settings/applications/InstalledAppDetails;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mDataPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/cyanogenmod/settings/applications/InstalledAppDetails;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mMemoryPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/cyanogenmod/settings/applications/InstalledAppDetails;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/cyanogenmod/settings/applications/InstalledAppDetails;)Landroid/net/INetworkStatsSession;
    .locals 1

    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic -set0(Lcom/cyanogenmod/settings/applications/InstalledAppDetails;Lcom/cyanogenmod/settingslib/net/ChartData;)Lcom/cyanogenmod/settingslib/net/ChartData;
    .locals 0

    iput-object p1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mChartData:Lcom/cyanogenmod/settingslib/net/ChartData;

    return-object p1
.end method

.method static synthetic -set1(Lcom/cyanogenmod/settings/applications/InstalledAppDetails;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    iput-object p1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic -set2(Lcom/cyanogenmod/settings/applications/InstalledAppDetails;Lcom/android/internal/os/BatterySipper;)Lcom/android/internal/os/BatterySipper;
    .locals 0

    iput-object p1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/cyanogenmod/settings/applications/InstalledAppDetails;)Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getDataSummary()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/cyanogenmod/settings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/cyanogenmod/settings/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allUsers"    # Z
    .param p3, "andDisable"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/cyanogenmod/settings/applications/InstalledAppDetails;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/cyanogenmod/settings/applications/AppInfoBase;-><init>()V

    .line 134
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 151
    new-instance v0, Lcom/cyanogenmod/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/cyanogenmod/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mBackend:Lcom/cyanogenmod/settings/notification/NotificationBackend;

    .line 1000
    new-instance v0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$1;-><init>(Lcom/cyanogenmod/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1019
    new-instance v0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$2;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$2;-><init>(Lcom/cyanogenmod/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 1029
    new-instance v0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$3;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$3;-><init>(Lcom/cyanogenmod/settings/applications/InstalledAppDetails;)V

    .line 1028
    iput-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPermissionCallback:Lcom/cyanogenmod/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    .line 103
    return-void
.end method

.method private checkForceStop()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 712
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    :cond_0
    return-void

    .line 716
    :cond_1
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 718
    invoke-direct {p0, v6}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    .line 711
    :goto_0
    return-void

    .line 719
    :cond_2
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-nez v0, :cond_3

    .line 722
    invoke-direct {p0, v5}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    .line 724
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    .line 725
    const-string/jumbo v2, "package"

    iget-object v4, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 724
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 726
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.intent.extra.PACKAGES"

    new-array v2, v5, [Ljava/lang/String;

    iget-object v4, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    const-string/jumbo v0, "android.intent.extra.UID"

    iget-object v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 728
    const-string/jumbo v0, "android.intent.extra.user_handle"

    iget-object v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 729
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 730
    iget-object v4, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    .line 729
    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 691
    const-string/jumbo v4, "activity"

    .line 690
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 692
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 693
    iget-object v3, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 694
    .local v2, "userId":I
    iget-object v3, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mState:Lcom/cyanogenmod/settingslib/applications/ApplicationsState;

    invoke-virtual {v3, p1, v2}, Lcom/cyanogenmod/settingslib/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;I)V

    .line 695
    iget-object v3, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mState:Lcom/cyanogenmod/settingslib/applications/ApplicationsState;

    invoke-virtual {v3, p1, v2}, Lcom/cyanogenmod/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 696
    .local v1, "newEnt":Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;
    if-eqz v1, :cond_0

    .line 697
    iput-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    .line 699
    :cond_0
    invoke-direct {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->checkForceStop()V

    .line 689
    return-void
.end method

.method private getDataSummary()Ljava/lang/CharSequence;
    .locals 7

    .prologue
    .line 607
    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mChartData:Lcom/cyanogenmod/settingslib/net/ChartData;

    if-eqz v1, :cond_1

    .line 608
    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mChartData:Lcom/cyanogenmod/settingslib/net/ChartData;

    iget-object v1, v1, Lcom/cyanogenmod/settingslib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v2

    .line 609
    .local v2, "totalBytes":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 610
    const v1, 0x7f0c0e7f

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 612
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 613
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 614
    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    .line 615
    iget-object v4, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mChartData:Lcom/cyanogenmod/settingslib/net/ChartData;

    iget-object v4, v4, Lcom/cyanogenmod/settingslib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v4

    .line 616
    const v6, 0x10010

    .line 615
    invoke-static {v0, v4, v5, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    .line 613
    const v4, 0x7f0c0e05

    invoke-virtual {p0, v4, v1}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 618
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "totalBytes":J
    :cond_1
    const v1, 0x7f0c08de

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNotificationSummary(Lcom/cyanogenmod/settings/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "appRow"    # Lcom/cyanogenmod/settings/notification/NotificationBackend$AppRow;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 873
    iget-boolean v1, p0, Lcom/cyanogenmod/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v1, :cond_0

    .line 874
    const v1, 0x7f0c0e0b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 876
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 877
    .local v0, "notifSummary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-boolean v1, p0, Lcom/cyanogenmod/settings/notification/NotificationBackend$AppRow;->priority:Z

    if-eqz v1, :cond_1

    .line 878
    const v1, 0x7f0c0e0d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    :cond_1
    iget-boolean v1, p0, Lcom/cyanogenmod/settings/notification/NotificationBackend$AppRow;->sensitive:Z

    if-eqz v1, :cond_2

    .line 881
    const v1, 0x7f0c0e0c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    :cond_2
    iget-boolean v1, p0, Lcom/cyanogenmod/settings/notification/NotificationBackend$AppRow;->peekable:Z

    if-nez v1, :cond_3

    .line 884
    const v1, 0x7f0c0e0e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 896
    const v1, 0x7f0c0e0a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 888
    :pswitch_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 889
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v5

    .line 888
    const v2, 0x7f0c0e10

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 891
    :pswitch_1
    new-array v1, v5, [Ljava/lang/Object;

    .line 892
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v4

    .line 891
    const v2, 0x7f0c0e0f

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 894
    :pswitch_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    return-object v1

    .line 886
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getNotificationSummary(Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;Lcom/cyanogenmod/settings/notification/NotificationBackend;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "appEntry"    # Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backend"    # Lcom/cyanogenmod/settings/notification/NotificationBackend;

    .prologue
    .line 868
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v1, v2}, Lcom/cyanogenmod/settings/notification/NotificationBackend;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/cyanogenmod/settings/notification/NotificationBackend$AppRow;

    move-result-object v0

    .line 869
    .local v0, "appRow":Lcom/cyanogenmod/settings/notification/NotificationBackend$AppRow;
    invoke-static {v0, p1}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getNotificationSummary(Lcom/cyanogenmod/settings/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private static getTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 853
    invoke-static {p0}, Lcom/cyanogenmod/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0

    .line 856
    :cond_0
    invoke-static {p0}, Lcom/cyanogenmod/settings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 857
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0

    .line 859
    :cond_1
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method private handleDisableable(Landroid/widget/Button;)Z
    .locals 4
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const v3, 0x7f0c08a8

    .line 167
    const/4 v0, 0x0

    .line 171
    .local v0, "disableable":Z
    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v1, v2}, Lcom/cyanogenmod/settings/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v1

    .line 171
    if-eqz v1, :cond_1

    .line 174
    :cond_0
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(I)V

    .line 183
    :goto_0
    return v0

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->isDisabledUntilUsed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 179
    :cond_2
    const v1, 0x7f0c08a9

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 180
    const/4 v0, 0x1

    goto :goto_0

    .line 176
    :cond_3
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(I)V

    .line 177
    const/4 v0, 0x1

    .line 175
    goto :goto_0
.end method

.method private handleHeader()V
    .locals 3

    .prologue
    .line 372
    const-string/jumbo v1, "header_view"

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/settings/applications/LayoutPreference;

    iput-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mHeader:Lcom/cyanogenmod/settings/applications/LayoutPreference;

    .line 375
    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mHeader:Lcom/cyanogenmod/settings/applications/LayoutPreference;

    const v2, 0x7f130129

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 376
    .local v0, "btnPanel":Landroid/view/View;
    const v1, 0x7f13025e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    .line 377
    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v2, 0x7f0c089f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 378
    const v1, 0x7f13025c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    .line 379
    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 371
    return-void
.end method

.method private initUninstallButtons()V
    .locals 6

    .prologue
    .line 192
    iget-object v4, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    const/4 v3, 0x1

    .line 193
    .local v3, "isBundled":Z
    :goto_0
    const/4 v1, 0x1

    .line 194
    .local v1, "enabled":Z
    if-eqz v3, :cond_7

    .line 195
    iget-object v4, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v1

    .line 207
    .end local v1    # "enabled":Z
    :goto_1
    iget-object v4, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 208
    const/4 v1, 0x0

    .line 211
    :cond_0
    iget-object v4, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->isProfileOrDeviceOwner(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 212
    const/4 v1, 0x0

    .line 221
    :cond_1
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 222
    if-eqz v3, :cond_9

    .line 223
    const/4 v1, 0x0

    .line 239
    :cond_2
    :goto_2
    iget-boolean v4, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v4, :cond_3

    .line 240
    const/4 v1, 0x0

    .line 245
    :cond_3
    iget-object v4, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->protect:Z

    if-eqz v4, :cond_4

    .line 246
    const/4 v1, 0x0

    .line 249
    :cond_4
    iget-object v4, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 250
    if-eqz v1, :cond_5

    .line 252
    iget-object v4, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    :cond_5
    return-void

    .line 192
    .end local v3    # "isBundled":Z
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "isBundled":Z
    goto :goto_0

    .line 197
    .restart local v1    # "enabled":Z
    :cond_7
    iget-object v4, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x800000

    and-int/2addr v4, v5

    if-nez v4, :cond_8

    .line 198
    iget-object v4, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_8

    .line 201
    const/4 v1, 0x0

    .line 203
    :cond_8
    iget-object v4, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v5, 0x7f0c08a5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 225
    .end local v1    # "enabled":Z
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v2, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v4, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 227
    .local v0, "currentDefaultHome":Landroid/content/ComponentName;
    if-nez v0, :cond_b

    .line 230
    iget-object v4, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_a

    const/4 v1, 0x1

    .restart local v1    # "enabled":Z
    goto :goto_2

    .end local v1    # "enabled":Z
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "enabled":Z
    goto :goto_2

    .line 234
    .end local v1    # "enabled":Z
    :cond_b
    iget-object v4, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v1, 0x0

    .restart local v1    # "enabled":Z
    goto :goto_2

    .end local v1    # "enabled":Z
    :cond_c
    const/4 v1, 0x1

    .restart local v1    # "enabled":Z
    goto :goto_2
.end method

.method private isDisabledUntilUsed()Z
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 188
    const/4 v1, 0x4

    .line 187
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isProfileOrDeviceOwner(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 258
    iget-object v5, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 260
    .local v4, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 259
    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 261
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 262
    return v7

    .line 264
    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "userInfo$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 265
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 266
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 267
    return v7

    .line 270
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v5, 0x0

    return v5
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 5
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v1, 0x0

    .line 494
    iget-object v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mHeader:Lcom/cyanogenmod/settings/applications/LayoutPreference;

    const v3, 0x7f130018

    invoke-virtual {v2, v3}, Lcom/cyanogenmod/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 495
    .local v0, "appSnippet":Landroid/view/View;
    iget-object v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mState:Lcom/cyanogenmod/settingslib/applications/ApplicationsState;

    iget-object v3, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v2, v3}, Lcom/cyanogenmod/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 496
    iget-object v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    iget-object v3, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 497
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :cond_0
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 496
    invoke-static {v0, v2, v3, v1, v4}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->setupAppSnippet(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method public static setupAppSnippet(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 9
    .param p0, "appSnippet"    # Landroid/view/View;
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "versionName"    # Ljava/lang/CharSequence;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 825
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 826
    const v4, 0x1020018

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 825
    const v6, 0x7f04014c

    invoke-virtual {v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 828
    const v4, 0x1020006

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 829
    .local v2, "iconView":Landroid/widget/ImageView;
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 831
    const v4, 0x1020016

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 832
    .local v3, "labelView":Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 834
    const v4, 0x7f130290

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 836
    .local v1, "appVersion":Landroid/widget/TextView;
    if-eqz p4, :cond_0

    .line 837
    const v4, 0x7f130291

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 838
    .local v0, "appPackage":Landroid/widget/TextView;
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 842
    .end local v0    # "appPackage":Landroid/widget/TextView;
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 843
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 844
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 845
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    .line 846
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 845
    const v6, 0x7f0c08e1

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 824
    :goto_0
    return-void

    .line 848
    :cond_1
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 501
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 503
    :try_start_0
    iget-object v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 504
    .local v1, "match":I
    if-ltz v1, :cond_0

    .line 505
    const/4 v2, 0x1

    return v2

    .line 507
    .end local v1    # "match":I
    :catch_0
    move-exception v0

    .line 512
    :cond_0
    return v3
.end method

.method private startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V
    .locals 7
    .param p2, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    .line 748
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 749
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "package"

    iget-object v3, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const-string/jumbo v1, "uid"

    iget-object v3, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 751
    const-string/jumbo v1, "hideInfoButton"

    invoke-virtual {v2, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 753
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/SettingsActivity;

    .line 754
    .local v0, "sa":Lcom/cyanogenmod/settings/SettingsActivity;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    move-object v4, p2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/cyanogenmod/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 746
    return-void
.end method

.method private startManagePermissionsActivity()V
    .locals 4

    .prologue
    .line 736
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 737
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.PACKAGE_NAME"

    iget-object v3, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 738
    const-string/jumbo v2, "hideInfoButton"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 740
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    :goto_0
    return-void

    .line 741
    :catch_0
    move-exception v0

    .line 742
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "InstalledAppDetails"

    const-string/jumbo v3, "No app can handle android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allUsers"    # Z
    .param p3, "andDisable"    # Z

    .prologue
    .line 682
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 683
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 684
    .local v1, "uninstallIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 685
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    .line 686
    iput-boolean p3, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 680
    return-void
.end method

.method private updateBattery()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 593
    iget-object v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    if-eqz v2, :cond_0

    .line 594
    iget-object v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 595
    iget-object v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v0

    .line 597
    .local v0, "dischargeAmount":I
    iget-object v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 598
    iget-object v4, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v4

    .line 597
    div-double/2addr v2, v4

    .line 598
    int-to-double v4, v0

    .line 597
    mul-double/2addr v2, v4

    .line 598
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 597
    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 599
    .local v1, "percentOfMax":I
    iget-object v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, 0x7f0c0e56

    invoke-virtual {p0, v4, v3}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 592
    .end local v0    # "dischargeAmount":I
    .end local v1    # "percentOfMax":I
    :goto_0
    return-void

    .line 601
    :cond_0
    iget-object v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 602
    iget-object v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    const v3, 0x7f0c0e57

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateForceStopButton(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 703
    iget-boolean v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 702
    :goto_0
    return-void

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 707
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 7
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .prologue
    const v6, 0x7f0c08f2

    const v5, 0x7f0c08cd

    const v4, 0x7f0c08ce

    const/4 v3, 0x0

    .line 623
    packed-switch p1, :pswitch_data_0

    .line 677
    return-object v3

    .line 625
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 626
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c08f3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 625
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 628
    new-instance v1, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$4;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$4;-><init>(Lcom/cyanogenmod/settings/applications/InstalledAppDetails;)V

    .line 625
    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 639
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 640
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c08f5

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 639
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 642
    new-instance v1, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$5;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$5;-><init>(Lcom/cyanogenmod/settings/applications/InstalledAppDetails;)V

    .line 639
    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 652
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 653
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c08eb

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 652
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 654
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c08ec

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 652
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 655
    new-instance v1, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$6;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$6;-><init>(Lcom/cyanogenmod/settings/applications/InstalledAppDetails;)V

    .line 652
    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 664
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 665
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c08d2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 664
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 666
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c08d3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 664
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 667
    new-instance v1, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$7;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$7;-><init>(Lcom/cyanogenmod/settings/applications/InstalledAppDetails;)V

    .line 664
    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 623
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 297
    const/16 v0, 0x14

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 336
    invoke-super {p0, p1}, Lcom/cyanogenmod/settings/applications/AppInfoBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 337
    iget-boolean v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mFinishing:Z

    if-eqz v0, :cond_0

    .line 338
    return-void

    .line 340
    :cond_0
    invoke-direct {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->handleHeader()V

    .line 342
    const-string/jumbo v0, "notification_settings"

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mNotificationPreference:Landroid/preference/Preference;

    .line 343
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mNotificationPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 344
    const-string/jumbo v0, "storage_settings"

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mStoragePreference:Landroid/preference/Preference;

    .line 345
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mStoragePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 346
    const-string/jumbo v0, "permission_settings"

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/preference/Preference;

    .line 347
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 348
    const-string/jumbo v0, "data_settings"

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mDataPreference:Landroid/preference/Preference;

    .line 349
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mDataPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mDataPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 352
    :cond_1
    const-string/jumbo v0, "battery"

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    .line 353
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 354
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 355
    const-string/jumbo v0, "memory"

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mMemoryPreference:Landroid/preference/Preference;

    .line 356
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mMemoryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 358
    const-string/jumbo v0, "preferred_settings"

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    .line 359
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3

    .line 360
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 361
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 335
    :goto_0
    return-void

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 367
    :cond_3
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x3

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 439
    invoke-super {p0, p1, p2, p3}, Lcom/cyanogenmod/settings/applications/AppInfoBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 440
    if-nez p1, :cond_2

    .line 441
    iget-boolean v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    if-eqz v2, :cond_0

    .line 442
    iput-boolean v3, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 444
    :try_start_0
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 445
    iget-object v3, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v4, 0x2200

    .line 444
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 447
    .local v0, "ainfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    .line 448
    new-instance v3, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 449
    const/4 v4, 0x3

    .line 448
    invoke-direct {v3, p0, v2, v4}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/cyanogenmod/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    .line 450
    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 448
    invoke-virtual {v3, v4}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v2

    if-nez v2, :cond_1

    .line 456
    invoke-virtual {p0, v6, v6}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 438
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    .line 458
    :cond_2
    if-ne p1, v2, :cond_1

    .line 459
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 461
    :pswitch_1
    new-instance v2, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$ToggleProtectedAppComponents;

    invoke-direct {v2, p0, v4}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$ToggleProtectedAppComponents;-><init>(Lcom/cyanogenmod/settings/applications/InstalledAppDetails;Lcom/cyanogenmod/settings/applications/InstalledAppDetails$ToggleProtectedAppComponents;)V

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$ToggleProtectedAppComponents;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 452
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 459
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 762
    iget-object v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v2, :cond_0

    .line 763
    invoke-virtual {p0, v5, v5}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 764
    return-void

    .line 766
    :cond_0
    iget-object v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 767
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_7

    .line 768
    iget-object v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 769
    iget-object v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->isDisabledUntilUsed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 776
    :cond_1
    new-instance v2, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v3, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, p0, v3, v4}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/cyanogenmod/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v3, v5, [Ljava/lang/Object;

    .line 778
    check-cast v1, Ljava/lang/Object;

    aput-object v1, v3, v4

    .line 776
    invoke-virtual {v2, v3}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 761
    :cond_2
    :goto_0
    return-void

    .line 770
    :cond_3
    iget-boolean v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v1, :cond_4

    .line 771
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v4}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 773
    :cond_4
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v4}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 780
    :cond_5
    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-nez v1, :cond_6

    .line 781
    invoke-direct {p0, v0, v5, v4}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 783
    :cond_6
    invoke-direct {p0, v0, v4, v4}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 785
    :cond_7
    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    .line 786
    invoke-virtual {p0, v5, v4}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 276
    invoke-super {p0, p1}, Lcom/cyanogenmod/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    .line 278
    invoke-virtual {p0, v4}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->setHasOptionsMenu(Z)V

    .line 279
    const v2, 0x7f08002e

    invoke-virtual {p0, v2}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->addPreferencesFromResource(I)V

    .line 281
    invoke-static {}, Lcom/cyanogenmod/settings/Utils;->isBandwidthControlEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    const-string/jumbo v2, "netstats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 282
    invoke-static {v2}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    .line 285
    .local v1, "statsService":Landroid/net/INetworkStatsService;
    :try_start_0
    invoke-interface {v1}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v1    # "statsService":Landroid/net/INetworkStatsService;
    :goto_0
    new-instance v2, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 275
    return-void

    .line 286
    .restart local v1    # "statsService":Landroid/net/INetworkStatsService;
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 290
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "statsService":Landroid/net/INetworkStatsService;
    :cond_0
    const-string/jumbo v2, "data_settings"

    invoke-virtual {p0, v2}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 384
    const/4 v0, 0x2

    const v1, 0x7f0c08ab

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 386
    const v0, 0x7f0c08a6

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 388
    const/4 v0, 0x3

    const v1, 0x7f0c0332

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 389
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 388
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 383
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 326
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 327
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 329
    iput-object v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    .line 332
    :cond_0
    invoke-super {p0}, Lcom/cyanogenmod/settings/applications/AppInfoBase;->onDestroy()V

    .line 325
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 422
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 434
    :goto_0
    return v3

    .line 424
    :pswitch_0
    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    .line 425
    return v2

    .line 427
    :pswitch_1
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v3}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 428
    return v2

    .line 431
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 432
    .local v0, "protectedApps":Landroid/content/Intent;
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 321
    invoke-super {p0}, Lcom/cyanogenmod/settings/applications/AppInfoBase;->onPause()V

    .line 319
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 793
    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mStoragePreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_0

    .line 794
    const-class v1, Lcom/cyanogenmod/settings/applications/AppStorageSettings;

    iget-object v3, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mStoragePreference:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    .line 820
    :goto_0
    return v6

    .line 795
    :cond_0
    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mNotificationPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 796
    const-class v1, Lcom/cyanogenmod/settings/notification/AppNotificationSettings;

    .line 797
    const v3, 0x7f0c0d77

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 796
    invoke-direct {p0, v1, v3}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 798
    :cond_1
    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_2

    .line 799
    invoke-direct {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->startManagePermissionsActivity()V

    goto :goto_0

    .line 800
    :cond_2
    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_3

    .line 801
    const-class v1, Lcom/cyanogenmod/settings/applications/AppLaunchSettings;

    iget-object v3, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 802
    :cond_3
    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mMemoryPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_4

    .line 803
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/settings/SettingsActivity;

    .line 804
    iget-object v3, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mStatsManager:Lcom/cyanogenmod/settings/applications/ProcStatsData;

    invoke-virtual {v3}, Lcom/cyanogenmod/settings/applications/ProcStatsData;->getMemInfo()Lcom/cyanogenmod/settings/applications/ProcStatsData$MemInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mStats:Lcom/cyanogenmod/settings/applications/ProcStatsPackageEntry;

    .line 803
    invoke-static {v1, v3, v4}, Lcom/cyanogenmod/settings/applications/ProcessStatsBase;->launchMemoryDetail(Lcom/cyanogenmod/settings/SettingsActivity;Lcom/cyanogenmod/settings/applications/ProcStatsData$MemInfo;Lcom/cyanogenmod/settings/applications/ProcStatsPackageEntry;)V

    goto :goto_0

    .line 805
    :cond_4
    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mDataPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_5

    .line 806
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 807
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "showAppImmediatePkg"

    .line 808
    iget-object v3, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 807
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/SettingsActivity;

    .line 811
    .local v0, "sa":Lcom/cyanogenmod/settings/SettingsActivity;
    const-class v1, Lcom/cyanogenmod/settings/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 812
    const v3, 0x7f0c0e04

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 811
    const/4 v3, -0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/cyanogenmod/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 813
    .end local v0    # "sa":Lcom/cyanogenmod/settings/SettingsActivity;
    .end local v2    # "args":Landroid/os/Bundle;
    :cond_5
    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_6

    .line 814
    new-instance v7, Lcom/cyanogenmod/settings/fuelgauge/BatteryEntry;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    iget-object v4, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    const/4 v5, 0x0

    invoke-direct {v7, v1, v5, v3, v4}, Lcom/cyanogenmod/settings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    .line 815
    .local v7, "entry":Lcom/cyanogenmod/settings/fuelgauge/BatteryEntry;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/settings/SettingsActivity;

    .line 816
    iget-object v3, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 815
    invoke-static {v1, v3, v8, v7, v6}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageDetail;->startBatteryDetailPage(Lcom/cyanogenmod/settings/SettingsActivity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/cyanogenmod/settings/fuelgauge/BatteryEntry;Z)V

    goto/16 :goto_0

    .line 818
    .end local v7    # "entry":Lcom/cyanogenmod/settings/fuelgauge/BatteryEntry;
    :cond_6
    return v8
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 395
    iget-boolean v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mFinishing:Z

    if-eqz v1, :cond_0

    .line 396
    return-void

    .line 398
    :cond_0
    const/4 v0, 0x1

    .line 399
    .local v0, "showIt":Z
    iget-boolean v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v1, :cond_5

    .line 400
    const/4 v0, 0x0

    .line 412
    :cond_1
    :goto_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 413
    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_b

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 414
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v4, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 416
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_4

    .line 417
    iget-object v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v2, Landroid/content/pm/ApplicationInfo;->protect:Z

    .line 416
    :cond_4
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 394
    return-void

    .line 401
    :cond_5
    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v1, :cond_6

    .line 402
    const/4 v0, 0x0

    goto :goto_0

    .line 403
    :cond_6
    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    .line 404
    const/4 v0, 0x0

    goto :goto_0

    .line 405
    :cond_7
    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 406
    :cond_8
    const/4 v0, 0x0

    goto :goto_0

    .line 407
    :cond_9
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_a

    .line 408
    const/4 v0, 0x0

    goto :goto_0

    .line 409
    :cond_a
    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v5, :cond_1

    .line 410
    const/4 v0, 0x0

    goto :goto_0

    :cond_b
    move v1, v3

    .line 413
    goto :goto_1
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 302
    invoke-super {p0}, Lcom/cyanogenmod/settings/applications/AppInfoBase;->onResume()V

    .line 303
    iget-boolean v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mFinishing:Z

    if-eqz v1, :cond_0

    .line 304
    return-void

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mState:Lcom/cyanogenmod/settingslib/applications/ApplicationsState;

    iget-object v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/cyanogenmod/settingslib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    .line 307
    new-instance v0, Lcom/cyanogenmod/settingslib/AppItem;

    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v0, v1}, Lcom/cyanogenmod/settingslib/AppItem;-><init>(I)V

    .line 308
    .local v0, "app":Lcom/cyanogenmod/settingslib/AppItem;
    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settingslib/AppItem;->addUid(I)V

    .line 309
    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v1, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    .line 311
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/cyanogenmod/settingslib/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/cyanogenmod/settingslib/AppItem;)Landroid/os/Bundle;

    move-result-object v2

    .line 312
    iget-object v3, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 310
    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 314
    :cond_1
    new-instance v1, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$BatteryUpdater;

    invoke-direct {v1, p0, v5}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$BatteryUpdater;-><init>(Lcom/cyanogenmod/settings/applications/InstalledAppDetails;Lcom/cyanogenmod/settings/applications/InstalledAppDetails$BatteryUpdater;)V

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$BatteryUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 315
    new-instance v1, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$MemoryUpdater;

    invoke-direct {v1, p0, v5}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$MemoryUpdater;-><init>(Lcom/cyanogenmod/settings/applications/InstalledAppDetails;Lcom/cyanogenmod/settings/applications/InstalledAppDetails$MemoryUpdater;)V

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$MemoryUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 301
    return-void
.end method

.method protected refreshUi()Z
    .locals 13

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    .line 518
    iget-object v9, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v9, :cond_0

    .line 519
    const/4 v9, 0x0

    return v9

    .line 522
    :cond_0
    iget-object v9, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v9, :cond_1

    .line 523
    const/4 v9, 0x0

    return v9

    .line 527
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .local v4, "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v9, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v4}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 529
    iget-object v9, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    .line 530
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_3

    .line 531
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 532
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 533
    .local v0, "activityPkg":Ljava/lang/String;
    iget-object v9, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 536
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v9, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 537
    .local v7, "metadata":Landroid/os/Bundle;
    if-eqz v7, :cond_2

    .line 538
    const-string/jumbo v9, "android.app.home.alternate"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 539
    .local v6, "metaPkg":Ljava/lang/String;
    invoke-direct {p0, v6, v0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 540
    iget-object v9, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v9, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 530
    .end local v6    # "metaPkg":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 545
    .end local v0    # "activityPkg":Ljava/lang/String;
    .end local v7    # "metadata":Landroid/os/Bundle;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-direct {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->checkForceStop()V

    .line 546
    iget-object v9, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v9}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 547
    invoke-direct {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->initUninstallButtons()V

    .line 550
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 551
    .local v2, "context":Landroid/app/Activity;
    iget-object v9, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mStoragePreference:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v10, v2}, Lcom/cyanogenmod/settings/applications/AppStorageSettings;->getSummary(Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v9, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v9, :cond_4

    .line 553
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 555
    :cond_4
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 556
    iget-object v10, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    iget-object v11, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPermissionCallback:Lcom/cyanogenmod/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    .line 555
    invoke-static {v9, v10, v11}, Lcom/cyanogenmod/settings/applications/PermissionsSummaryHelper;->getPermissionSummary(Landroid/content/Context;Ljava/lang/String;Lcom/cyanogenmod/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;)Landroid/content/BroadcastReceiver;

    move-result-object v9

    iput-object v9, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    .line 557
    iget-object v9, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v11, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 558
    iget-object v12, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 557
    invoke-static {v10, v11, v12, v2}, Lcom/cyanogenmod/settings/Utils;->getLaunchByDeafaultSummary(Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;Landroid/hardware/usb/IUsbManager;Landroid/content/pm/PackageManager;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 559
    iget-object v9, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mNotificationPreference:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    .line 560
    iget-object v11, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mBackend:Lcom/cyanogenmod/settings/notification/NotificationBackend;

    .line 559
    invoke-static {v10, v2, v11}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getNotificationSummary(Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;Lcom/cyanogenmod/settings/notification/NotificationBackend;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v9, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mDataPreference:Landroid/preference/Preference;

    if-eqz v9, :cond_5

    .line 562
    iget-object v9, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mDataPreference:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getDataSummary()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 565
    :cond_5
    invoke-direct {p0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->updateBattery()V

    .line 567
    iget-boolean v9, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mInitialized:Z

    if-nez v9, :cond_8

    .line 569
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mInitialized:Z

    .line 570
    iget-object v9, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v9, v9, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x800000

    and-int/2addr v9, v10

    if-nez v9, :cond_7

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mShowUninstalled:Z

    .line 589
    :cond_6
    const/4 v9, 0x1

    return v9

    .line 570
    :cond_7
    const/4 v9, 0x0

    goto :goto_1

    .line 575
    :cond_8
    :try_start_0
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 576
    iget-object v10, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v10, v10, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v11, 0x2200

    .line 575
    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 578
    .local v1, "ainfo":Landroid/content/pm/ApplicationInfo;
    iget-boolean v9, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->mShowUninstalled:Z

    if-nez v9, :cond_6

    .line 582
    iget v9, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v10, 0x800000

    and-int/2addr v9, v10

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    :goto_2
    return v9

    :cond_9
    const/4 v9, 0x0

    goto :goto_2

    .line 584
    .end local v1    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    .line 585
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v9, 0x0

    return v9
.end method
