.class Lcom/cyanogenmod/settings/SecuritySettings$SecuritySearchIndexProvider;
.super Lcom/cyanogenmod/settings/search/BaseSearchIndexProvider;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecuritySearchIndexProvider"
.end annotation


# instance fields
.field mIsPrimary:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 943
    invoke-direct {p0}, Lcom/cyanogenmod/settings/search/BaseSearchIndexProvider;-><init>()V

    .line 945
    sget v1, Lcom/cyanogenmod/settings/SecuritySettings;->MY_USER_ID:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/cyanogenmod/settings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    .line 942
    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1028
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1030
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1033
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 1034
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    iget-boolean v4, p0, Lcom/cyanogenmod/settings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1038
    :goto_0
    const-string/jumbo v4, "user"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1039
    .local v3, "um":Landroid/os/UserManager;
    const-string/jumbo v4, "no_config_credentials"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1040
    const-string/jumbo v4, "credentials_management"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1044
    :cond_0
    sget v4, Lcom/cyanogenmod/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1045
    const-string/jumbo v4, "trust_agent"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1046
    const-string/jumbo v4, "manage_trust_agents"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1049
    :cond_1
    return-object v0

    .line 1035
    .end local v3    # "um":Landroid/os/UserManager;
    :cond_2
    const-string/jumbo v4, "sim_lock"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/cyanogenmod/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 986
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 987
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/cyanogenmod/settings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 989
    .local v2, "res":Landroid/content/res/Resources;
    const v8, 0x7f0c0502

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 991
    .local v5, "screenTitle":Ljava/lang/String;
    new-instance v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 992
    .local v0, "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    iput-object v5, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 993
    iput-object v5, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 994
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 996
    iget-boolean v8, p0, Lcom/cyanogenmod/settings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-nez v8, :cond_0

    .line 997
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 998
    const v3, 0x7f0c04fe

    .line 1000
    .local v3, "resId":I
    :goto_0
    new-instance v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1001
    .restart local v0    # "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1002
    iput-object v5, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1003
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    .end local v3    # "resId":I
    :cond_0
    const-string/jumbo v8, "user"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    .line 1009
    .local v7, "um":Landroid/os/UserManager;
    const-string/jumbo v8, "no_config_credentials"

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1010
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    .line 1012
    .local v1, "keyStore":Landroid/security/KeyStore;
    invoke-virtual {v1}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1013
    const v6, 0x7f0c0b02

    .line 1016
    .local v6, "storageSummaryRes":I
    :goto_1
    new-instance v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1017
    .restart local v0    # "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1018
    iput-object v5, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1019
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1023
    .end local v1    # "keyStore":Landroid/security/KeyStore;
    .end local v6    # "storageSummaryRes":I
    :cond_1
    return-object v4

    .line 998
    .end local v7    # "um":Landroid/os/UserManager;
    :cond_2
    const v3, 0x7f0c04fc

    .restart local v3    # "resId":I
    goto :goto_0

    .line 1014
    .end local v3    # "resId":I
    .restart local v1    # "keyStore":Landroid/security/KeyStore;
    .restart local v7    # "um":Landroid/os/UserManager;
    :cond_3
    const v6, 0x7f0c0b03

    .restart local v6    # "storageSummaryRes":I
    goto :goto_1
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 952
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 954
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    const/4 v1, 0x0

    .line 956
    .local v1, "resId":I
    iget-boolean v4, p0, Lcom/cyanogenmod/settings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v4, :cond_0

    .line 958
    const-string/jumbo v4, "device_policy"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 957
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 960
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 971
    :goto_0
    :pswitch_0
    new-instance v3, Landroid/provider/SearchIndexableResource;

    invoke-direct {v3, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 972
    .local v3, "sir":Landroid/provider/SearchIndexableResource;
    iput v1, v3, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 973
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 977
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v3    # "sir":Landroid/provider/SearchIndexableResource;
    :cond_0
    new-instance v3, Landroid/provider/SearchIndexableResource;

    invoke-direct {v3, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 978
    .restart local v3    # "sir":Landroid/provider/SearchIndexableResource;
    const v4, 0x7f08004e

    iput v4, v3, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 979
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 981
    return-object v2

    .line 963
    .end local v3    # "sir":Landroid/provider/SearchIndexableResource;
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :pswitch_1
    const v1, 0x7f08004b

    .line 964
    goto :goto_0

    .line 967
    :pswitch_2
    const v1, 0x7f080054

    .line 968
    goto :goto_0

    .line 960
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
