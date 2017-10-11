.class public Lcom/cyanogenmod/settings/applications/AppStateNotificationBridge;
.super Lcom/cyanogenmod/settings/applications/AppStateBaseBridge;
.source "AppStateNotificationBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/settings/applications/AppStateNotificationBridge$1;,
        Lcom/cyanogenmod/settings/applications/AppStateNotificationBridge$2;,
        Lcom/cyanogenmod/settings/applications/AppStateNotificationBridge$3;,
        Lcom/cyanogenmod/settings/applications/AppStateNotificationBridge$4;
    }
.end annotation


# static fields
.field public static final FILTER_APP_NOTIFICATION_BLOCKED:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APP_NOTIFICATION_NO_PEEK:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APP_NOTIFICATION_PRIORITY:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APP_NOTIFICATION_SENSITIVE:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppFilter;


# instance fields
.field private final mNotifBackend:Lcom/cyanogenmod/settings/notification/NotificationBackend;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/cyanogenmod/settings/applications/AppStateNotificationBridge$1;

    invoke-direct {v0}, Lcom/cyanogenmod/settings/applications/AppStateNotificationBridge$1;-><init>()V

    sput-object v0, Lcom/cyanogenmod/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_BLOCKED:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppFilter;

    .line 70
    new-instance v0, Lcom/cyanogenmod/settings/applications/AppStateNotificationBridge$2;

    invoke-direct {v0}, Lcom/cyanogenmod/settings/applications/AppStateNotificationBridge$2;-><init>()V

    sput-object v0, Lcom/cyanogenmod/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_PRIORITY:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppFilter;

    .line 81
    new-instance v0, Lcom/cyanogenmod/settings/applications/AppStateNotificationBridge$3;

    invoke-direct {v0}, Lcom/cyanogenmod/settings/applications/AppStateNotificationBridge$3;-><init>()V

    sput-object v0, Lcom/cyanogenmod/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_SENSITIVE:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppFilter;

    .line 92
    new-instance v0, Lcom/cyanogenmod/settings/applications/AppStateNotificationBridge$4;

    invoke-direct {v0}, Lcom/cyanogenmod/settings/applications/AppStateNotificationBridge$4;-><init>()V

    sput-object v0, Lcom/cyanogenmod/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_NO_PEEK:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppFilter;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Lcom/cyanogenmod/settingslib/applications/ApplicationsState;Lcom/cyanogenmod/settings/applications/AppStateBaseBridge$Callback;Lcom/cyanogenmod/settings/notification/NotificationBackend;)V
    .locals 0
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "appState"    # Lcom/cyanogenmod/settingslib/applications/ApplicationsState;
    .param p3, "callback"    # Lcom/cyanogenmod/settings/applications/AppStateBaseBridge$Callback;
    .param p4, "notifBackend"    # Lcom/cyanogenmod/settings/notification/NotificationBackend;

    .prologue
    .line 39
    invoke-direct {p0, p2, p3}, Lcom/cyanogenmod/settings/applications/AppStateBaseBridge;-><init>(Lcom/cyanogenmod/settingslib/applications/ApplicationsState;Lcom/cyanogenmod/settings/applications/AppStateBaseBridge$Callback;)V

    .line 40
    iput-object p1, p0, Lcom/cyanogenmod/settings/applications/AppStateNotificationBridge;->mPm:Landroid/content/pm/PackageManager;

    .line 41
    iput-object p4, p0, Lcom/cyanogenmod/settings/applications/AppStateNotificationBridge;->mNotifBackend:Lcom/cyanogenmod/settings/notification/NotificationBackend;

    .line 38
    return-void
.end method


# virtual methods
.method protected loadAllExtraInfo()V
    .locals 7

    .prologue
    .line 46
    iget-object v4, p0, Lcom/cyanogenmod/settings/applications/AppStateNotificationBridge;->mAppSession:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v4}, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v2

    .line 47
    .local v2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 48
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 49
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    .line 50
    .local v1, "app":Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;
    iget-object v4, p0, Lcom/cyanogenmod/settings/applications/AppStateNotificationBridge;->mNotifBackend:Lcom/cyanogenmod/settings/notification/NotificationBackend;

    iget-object v5, p0, Lcom/cyanogenmod/settings/applications/AppStateNotificationBridge;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, v1, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5, v6}, Lcom/cyanogenmod/settings/notification/NotificationBackend;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/cyanogenmod/settings/notification/NotificationBackend$AppRow;

    move-result-object v4

    iput-object v4, v1, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    .line 48
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45
    .end local v1    # "app":Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;
    :cond_0
    return-void
.end method

.method protected updateExtraInfo(Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 3
    .param p1, "app"    # Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/AppStateNotificationBridge;->mNotifBackend:Lcom/cyanogenmod/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/AppStateNotificationBridge;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v2}, Lcom/cyanogenmod/settings/notification/NotificationBackend;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/cyanogenmod/settings/notification/NotificationBackend$AppRow;

    move-result-object v0

    iput-object v0, p1, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    .line 55
    return-void
.end method
