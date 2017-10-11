.class public Lcom/cyanogenmod/settingslib/net/UidDetailProvider;
.super Ljava/lang/Object;
.source "UidDetailProvider.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUidDetailCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/cyanogenmod/settingslib/net/UidDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    .line 64
    return-void
.end method

.method public static buildKeyForUser(I)I
    .locals 1
    .param p0, "userHandle"    # I

    .prologue
    .line 53
    rsub-int v0, p0, -0x7d0

    return v0
.end method

.method private buildUidDetail(I)Lcom/cyanogenmod/settingslib/net/UidDetail;
    .locals 26
    .param p1, "uid"    # I

    .prologue
    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 106
    .local v18, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 108
    .local v17, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Lcom/cyanogenmod/settingslib/net/UidDetail;

    invoke-direct {v5}, Lcom/cyanogenmod/settingslib/net/UidDetail;-><init>()V

    .line 109
    .local v5, "detail":Lcom/cyanogenmod/settingslib/net/UidDetail;
    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Lcom/cyanogenmod/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 110
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Lcom/cyanogenmod/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 113
    sparse-switch p1, :sswitch_data_0

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string/jumbo v24, "user"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/UserManager;

    .line 135
    .local v19, "um":Landroid/os/UserManager;
    invoke-static/range {p1 .. p1}, Lcom/cyanogenmod/settingslib/net/UidDetailProvider;->isKeyForUser(I)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 136
    invoke-static/range {p1 .. p1}, Lcom/cyanogenmod/settingslib/net/UidDetailProvider;->getUserIdForKey(I)I

    move-result v20

    .line 137
    .local v20, "userHandle":I
    invoke-virtual/range {v19 .. v20}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v10

    .line 138
    .local v10, "info":Landroid/content/pm/UserInfo;
    if-eqz v10, :cond_1

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v10}, Lcom/cyanogenmod/settingslib/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Lcom/cyanogenmod/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Lcom/cyanogenmod/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Lcom/cyanogenmod/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 141
    return-object v5

    .line 115
    .end local v10    # "info":Landroid/content/pm/UserInfo;
    .end local v19    # "um":Landroid/os/UserManager;
    .end local v20    # "userHandle":I
    :sswitch_0
    sget v23, Lcom/cyanogenmod/settingslib/R$string;->process_kernel_label:I

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Lcom/cyanogenmod/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 116
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Lcom/cyanogenmod/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 117
    return-object v5

    .line 119
    :sswitch_1
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 120
    sget v23, Lcom/cyanogenmod/settingslib/R$string;->data_usage_uninstalled_apps_users:I

    .line 119
    :goto_0
    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Lcom/cyanogenmod/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 122
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Lcom/cyanogenmod/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 123
    return-object v5

    .line 121
    :cond_0
    sget v23, Lcom/cyanogenmod/settingslib/R$string;->data_usage_uninstalled_apps:I

    goto :goto_0

    .line 125
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cyanogenmod/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    .line 126
    const-string/jumbo v24, "connectivity"

    .line 125
    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 127
    .local v4, "cm":Landroid/net/ConnectivityManager;
    invoke-static {v4}, Lcom/cyanogenmod/settingslib/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v23

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Lcom/cyanogenmod/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 128
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Lcom/cyanogenmod/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 129
    return-object v5

    .line 146
    .end local v4    # "cm":Landroid/net/ConnectivityManager;
    .restart local v19    # "um":Landroid/os/UserManager;
    :cond_1
    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v16

    .line 147
    .local v16, "packageNames":[Ljava/lang/String;
    if-eqz v16, :cond_4

    move-object/from16 v0, v16

    array-length v13, v0

    .line 149
    .local v13, "length":I
    :goto_1
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    .line 150
    .local v22, "userId":I
    new-instance v21, Landroid/os/UserHandle;

    invoke-direct/range {v21 .. v22}, Landroid/os/UserHandle;-><init>(I)V

    .line 151
    .local v21, "userHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    .line 152
    .local v11, "ipm":Landroid/content/pm/IPackageManager;
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v13, v0, :cond_5

    .line 153
    const/16 v23, 0x0

    aget-object v23, v16, v23

    .line 154
    const/16 v24, 0x0

    .line 153
    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v22

    invoke-interface {v11, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 155
    .local v9, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v9, :cond_2

    .line 156
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Lcom/cyanogenmod/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 157
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .line 158
    new-instance v24, Landroid/os/UserHandle;

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 157
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Lcom/cyanogenmod/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 184
    .end local v9    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2
    iget-object v0, v5, Lcom/cyanogenmod/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Lcom/cyanogenmod/settingslib/net/UidDetail;->contentDescription:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v11    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v21    # "userHandle":Landroid/os/UserHandle;
    .end local v22    # "userId":I
    :goto_2
    iget-object v0, v5, Lcom/cyanogenmod/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 192
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Lcom/cyanogenmod/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 195
    :cond_3
    return-object v5

    .line 147
    .end local v13    # "length":I
    :cond_4
    const/4 v13, 0x0

    .restart local v13    # "length":I
    goto :goto_1

    .line 160
    .restart local v11    # "ipm":Landroid/content/pm/IPackageManager;
    .restart local v21    # "userHandle":Landroid/os/UserHandle;
    .restart local v22    # "userId":I
    :cond_5
    const/16 v23, 0x1

    move/from16 v0, v23

    if-le v13, v0, :cond_2

    .line 161
    :try_start_1
    new-array v0, v13, [Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v0, v5, Lcom/cyanogenmod/settingslib/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    .line 162
    new-array v0, v13, [Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v0, v5, Lcom/cyanogenmod/settingslib/net/UidDetail;->detailContentDescriptions:[Ljava/lang/CharSequence;

    .line 163
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v13, :cond_2

    .line 164
    aget-object v15, v16, v8

    .line 165
    .local v15, "packageName":Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 167
    .local v14, "packageInfo":Landroid/content/pm/PackageInfo;
    const/16 v23, 0x0

    .line 166
    move/from16 v0, v23

    move/from16 v1, v22

    invoke-interface {v11, v15, v0, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 169
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_7

    if-eqz v14, :cond_7

    .line 170
    iget-object v0, v5, Lcom/cyanogenmod/settingslib/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v23, v8

    .line 171
    iget-object v0, v5, Lcom/cyanogenmod/settingslib/net/UidDetail;->detailContentDescriptions:[Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    .line 172
    iget-object v0, v5, Lcom/cyanogenmod/settingslib/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    aget-object v24, v24, v8

    .line 171
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v24

    aput-object v24, v23, v8

    .line 173
    iget v0, v14, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v23, v0

    if-eqz v23, :cond_7

    .line 175
    iget v0, v14, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v23, v0

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    .line 174
    move-object/from16 v0, v17

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 176
    .local v12, "label":Ljava/lang/CharSequence;
    if-eqz v12, :cond_6

    .line 177
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Lcom/cyanogenmod/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 179
    :cond_6
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Lcom/cyanogenmod/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    .end local v12    # "label":Ljava/lang/CharSequence;
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 187
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "i":I
    .end local v11    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v14    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v21    # "userHandle":Landroid/os/UserHandle;
    .end local v22    # "userId":I
    :catch_0
    move-exception v7

    .line 188
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v23, "DataUsage"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Error while building UI detail for uid "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 185
    .end local v7    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .line 186
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v23, "DataUsage"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Error while building UI detail for uid "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 113
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_2
        -0x4 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getUserIdForKey(I)I
    .locals 1
    .param p0, "key"    # I

    .prologue
    .line 61
    rsub-int v0, p0, -0x7d0

    return v0
.end method

.method public static isKeyForUser(I)Z
    .locals 1
    .param p0, "key"    # I

    .prologue
    .line 57
    const/16 v0, -0x7d0

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    .prologue
    .line 70
    iget-object v1, p0, Lcom/cyanogenmod/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/cyanogenmod/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getUidDetail(IZ)Lcom/cyanogenmod/settingslib/net/UidDetail;
    .locals 4
    .param p1, "uid"    # I
    .param p2, "blocking"    # Z

    .prologue
    const/4 v3, 0x0

    .line 81
    iget-object v2, p0, Lcom/cyanogenmod/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v2

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/cyanogenmod/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settingslib/net/UidDetail;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "detail":Lcom/cyanogenmod/settingslib/net/UidDetail;
    monitor-exit v2

    .line 85
    if-eqz v0, :cond_0

    .line 86
    return-object v0

    .line 81
    .end local v0    # "detail":Lcom/cyanogenmod/settingslib/net/UidDetail;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 87
    .restart local v0    # "detail":Lcom/cyanogenmod/settingslib/net/UidDetail;
    :cond_0
    if-nez p2, :cond_1

    .line 88
    return-object v3

    .line 91
    :cond_1
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settingslib/net/UidDetailProvider;->buildUidDetail(I)Lcom/cyanogenmod/settingslib/net/UidDetail;

    move-result-object v0

    .line 93
    iget-object v2, p0, Lcom/cyanogenmod/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v2

    .line 94
    :try_start_1
    iget-object v1, p0, Lcom/cyanogenmod/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    .line 97
    return-object v0

    .line 93
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method
