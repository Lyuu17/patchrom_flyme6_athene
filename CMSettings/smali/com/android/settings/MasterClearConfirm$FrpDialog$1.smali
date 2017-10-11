.class Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog$1;
.super Landroid/os/AsyncTask;
.source "MasterClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mWipeExternal:Z

.field mWipeMedia:Z

.field final synthetic this$1:Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog$1;->this$1:Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 121
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 123
    iget-object v1, p0, Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog$1;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persistent_data_block"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 122
    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 124
    .local v0, "pdbManager":Landroid/service/persistentdata/PersistentDataBlockManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    .line 125
    :cond_0
    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "aVoid"    # Ljava/lang/Object;

    .prologue
    .line 129
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "aVoid":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog$1;->this$1:Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog;->dismissAllowingStateLoss()V

    .line 131
    iget-object v0, p0, Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog$1;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog$1;->mWipeMedia:Z

    iget-boolean v2, p0, Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog$1;->mWipeExternal:Z

    invoke-static {v0, v1, v2}, Lcom/cyanogenmod/settings/MasterClearConfirm;->-wrap0(Landroid/content/Context;ZZ)V

    .line 129
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog$1;->this$1:Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog$1;->mContext:Landroid/content/Context;

    .line 116
    iget-object v0, p0, Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog$1;->this$1:Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "wipe_media"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog$1;->mWipeMedia:Z

    .line 117
    iget-object v0, p0, Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog$1;->this$1:Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cyanogenmod/settings/MasterClearConfirm$FrpDialog$1;->mWipeExternal:Z

    .line 114
    return-void
.end method
