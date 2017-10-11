.class public Lcom/cyanogenmod/settings/MasterClearConfirm;
.super Landroid/app/DialogFragment;
.source "MasterClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog;
    }
.end annotation


# instance fields
.field private mEraseExternal:Z

.field private mEraseInternal:Z


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;ZZ)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eraseInternal"    # Z
    .param p2, "eraseExternal"    # Z

    .prologue
    invoke-static {p0, p1, p2}, Lcom/cyanogenmod/settings/MasterClearConfirm;->doMasterClear(Landroid/content/Context;ZZ)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/cyanogenmod/settings/MasterClearConfirm;)V
    .locals 0

    invoke-direct {p0}, Lcom/cyanogenmod/settings/MasterClearConfirm;->onResetConfirmed()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static createInstance(ZZ)Lcom/cyanogenmod/settings/MasterClearConfirm;
    .locals 3
    .param p0, "wipeInternal"    # Z
    .param p1, "wipeExternal"    # Z

    .prologue
    .line 138
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 139
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "wipe_media"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    const-string/jumbo v2, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 141
    new-instance v1, Lcom/cyanogenmod/settings/MasterClearConfirm;

    invoke-direct {v1}, Lcom/cyanogenmod/settings/MasterClearConfirm;-><init>()V

    .line 142
    .local v1, "fragment":Lcom/cyanogenmod/settings/MasterClearConfirm;
    invoke-virtual {v1, v0}, Lcom/cyanogenmod/settings/MasterClearConfirm;->setArguments(Landroid/os/Bundle;)V

    .line 144
    return-object v1
.end method

.method private static doMasterClear(Landroid/content/Context;ZZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eraseInternal"    # Z
    .param p2, "eraseExternal"    # Z

    .prologue
    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 173
    const-string/jumbo v1, "wipe_media"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 174
    const-string/jumbo v1, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 175
    const-string/jumbo v1, "android.intent.extra.REASON"

    const-string/jumbo v2, "MasterClearConfirm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 170
    return-void
.end method

.method private onResetConfirmed()V
    .locals 4

    .prologue
    .line 153
    invoke-static {}, Lcom/cyanogenmod/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "persistent_data_block"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 157
    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 160
    .local v0, "pdbManager":Landroid/service/persistentdata/PersistentDataBlockManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v2, p0, Lcom/cyanogenmod/settings/MasterClearConfirm;->mEraseInternal:Z

    iget-boolean v3, p0, Lcom/cyanogenmod/settings/MasterClearConfirm;->mEraseExternal:Z

    invoke-static {v1, v2, v3}, Lcom/cyanogenmod/settings/MasterClearConfirm;->doMasterClear(Landroid/content/Context;ZZ)V

    .line 152
    :goto_0
    return-void

    .line 162
    :cond_2
    iget-boolean v1, p0, Lcom/cyanogenmod/settings/MasterClearConfirm;->mEraseInternal:Z

    iget-boolean v2, p0, Lcom/cyanogenmod/settings/MasterClearConfirm;->mEraseExternal:Z

    invoke-static {v1, v2}, Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog;->createInstance(ZZ)Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog;

    move-result-object v1

    .line 163
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/MasterClearConfirm;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "frp_dialog"

    .line 162
    invoke-virtual {v1, v2, v3}, Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAccessibilityTitle()V
    .locals 5

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 214
    .local v2, "currentTitle":Ljava/lang/CharSequence;
    const v3, 0x7f0c0381

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/MasterClearConfirm;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 215
    .local v1, "confirmationMessage":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "accessibileText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v0}, Lcom/cyanogenmod/settings/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 212
    .end local v0    # "accessibileText":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 224
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 225
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0c07f1

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 227
    invoke-direct {p0}, Lcom/cyanogenmod/settings/MasterClearConfirm;->setAccessibilityTitle()V

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/MasterClearConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 231
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    const-string/jumbo v1, "wipe_media"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/cyanogenmod/settings/MasterClearConfirm;->mEraseInternal:Z

    .line 232
    if-eqz v0, :cond_1

    const-string/jumbo v1, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :cond_1
    iput-boolean v2, p0, Lcom/cyanogenmod/settings/MasterClearConfirm;->mEraseExternal:Z

    .line 234
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/MasterClearConfirm;->setShowsDialog(Z)V

    .line 223
    return-void

    :cond_2
    move v1, v2

    .line 231
    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 183
    const-string/jumbo v2, "no_factory_reset"

    .line 182
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 185
    const v2, 0x7f0c07ff

    .line 184
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 188
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    const v2, 0x7f0c07f1

    .line 188
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 190
    const v2, 0x7f0c0382

    invoke-virtual {p0, v2}, Lcom/cyanogenmod/settings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 191
    const v2, 0x7f0c04c1

    const/4 v3, 0x0

    .line 188
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 193
    new-instance v2, Lcom/cyanogenmod/settings/MasterClearConfirm$1;

    invoke-direct {v2, p0}, Lcom/cyanogenmod/settings/MasterClearConfirm$1;-><init>(Lcom/cyanogenmod/settings/MasterClearConfirm;)V

    .line 192
    const v3, 0x7f0c0381

    .line 188
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 200
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/cyanogenmod/settings/MasterClearConfirm$2;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/settings/MasterClearConfirm$2;-><init>(Lcom/cyanogenmod/settings/MasterClearConfirm;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 209
    return-object v0
.end method
