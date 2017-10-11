.class Lcom/cyanogenmod/settings/blacklist/EntryEditDialogFragment$3;
.super Ljava/lang/Object;
.source "EntryEditDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/blacklist/EntryEditDialogFragment;->createDialogView(JLandroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/blacklist/EntryEditDialogFragment;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/blacklist/EntryEditDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/blacklist/EntryEditDialogFragment;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/cyanogenmod/settings/blacklist/EntryEditDialogFragment$3;->this$0:Lcom/cyanogenmod/settings/blacklist/EntryEditDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 230
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, "contactListIntent":Landroid/content/Intent;
    const-string/jumbo v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    iget-object v1, p0, Lcom/cyanogenmod/settings/blacklist/EntryEditDialogFragment$3;->this$0:Lcom/cyanogenmod/settings/blacklist/EntryEditDialogFragment;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/cyanogenmod/settings/blacklist/EntryEditDialogFragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 229
    return-void
.end method
