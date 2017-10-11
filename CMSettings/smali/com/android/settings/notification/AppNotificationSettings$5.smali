.class Lcom/cyanogenmod/settings/notification/AppNotificationSettings$5;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/notification/AppNotificationSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/notification/AppNotificationSettings;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/notification/AppNotificationSettings;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/notification/AppNotificationSettings;
    .param p2, "val$pkg"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/cyanogenmod/settings/notification/AppNotificationSettings$5;->this$0:Lcom/cyanogenmod/settings/notification/AppNotificationSettings;

    iput-object p2, p0, Lcom/cyanogenmod/settings/notification/AppNotificationSettings$5;->val$pkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 208
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 209
    .local v0, "value":J
    iget-object v2, p0, Lcom/cyanogenmod/settings/notification/AppNotificationSettings$5;->this$0:Lcom/cyanogenmod/settings/notification/AppNotificationSettings;

    invoke-static {v2}, Lcom/cyanogenmod/settings/notification/AppNotificationSettings;->-get1(Lcom/cyanogenmod/settings/notification/AppNotificationSettings;)Lcom/cyanogenmod/settings/notification/NotificationBackend;

    move-result-object v2

    iget-object v3, p0, Lcom/cyanogenmod/settings/notification/AppNotificationSettings$5;->val$pkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/cyanogenmod/settings/notification/AppNotificationSettings$5;->this$0:Lcom/cyanogenmod/settings/notification/AppNotificationSettings;

    invoke-static {v4}, Lcom/cyanogenmod/settings/notification/AppNotificationSettings;->-get3(Lcom/cyanogenmod/settings/notification/AppNotificationSettings;)I

    move-result v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/cyanogenmod/settings/notification/NotificationBackend;->setNotificationSoundTimeout(Ljava/lang/String;IJ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    const/4 v2, 0x0

    return v2

    .line 212
    :cond_0
    iget-object v2, p0, Lcom/cyanogenmod/settings/notification/AppNotificationSettings$5;->this$0:Lcom/cyanogenmod/settings/notification/AppNotificationSettings;

    invoke-static {v2, v0, v1}, Lcom/cyanogenmod/settings/notification/AppNotificationSettings;->-wrap1(Lcom/cyanogenmod/settings/notification/AppNotificationSettings;J)V

    .line 213
    const/4 v2, 0x1

    return v2
.end method
