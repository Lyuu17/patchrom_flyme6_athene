.class Lcom/cyanogenmod/settings/sim/SimDialogActivity$5;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/sim/SimDialogActivity;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/sim/SimDialogActivity;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/sim/SimDialogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/sim/SimDialogActivity;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/cyanogenmod/settings/sim/SimDialogActivity$5;->this$0:Lcom/cyanogenmod/settings/sim/SimDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/cyanogenmod/settings/sim/SimDialogActivity$5;->this$0:Lcom/cyanogenmod/settings/sim/SimDialogActivity;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/sim/SimDialogActivity;->finish()V

    .line 354
    return-void
.end method
