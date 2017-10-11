.class Lcom/cyanogenmod/settings/MasterClearConfirm$1;
.super Ljava/lang/Object;
.source "MasterClearConfirm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/MasterClearConfirm;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/MasterClearConfirm;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/MasterClearConfirm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/MasterClearConfirm;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/cyanogenmod/settings/MasterClearConfirm$1;->this$0:Lcom/cyanogenmod/settings/MasterClearConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/cyanogenmod/settings/MasterClearConfirm$1;->this$0:Lcom/cyanogenmod/settings/MasterClearConfirm;

    invoke-static {v0}, Lcom/cyanogenmod/settings/MasterClearConfirm;->-wrap1(Lcom/cyanogenmod/settings/MasterClearConfirm;)V

    .line 195
    return-void
.end method
