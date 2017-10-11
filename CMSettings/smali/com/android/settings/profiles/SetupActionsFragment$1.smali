.class Lcom/cyanogenmod/settings/profiles/SetupActionsFragment$1;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/profiles/SetupActionsFragment;->requestFillProfileFromSettingsDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/profiles/SetupActionsFragment;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/profiles/SetupActionsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/profiles/SetupActionsFragment;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/cyanogenmod/settings/profiles/SetupActionsFragment$1;->this$0:Lcom/cyanogenmod/settings/profiles/SetupActionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 418
    iget-object v0, p0, Lcom/cyanogenmod/settings/profiles/SetupActionsFragment$1;->this$0:Lcom/cyanogenmod/settings/profiles/SetupActionsFragment;

    invoke-static {v0}, Lcom/cyanogenmod/settings/profiles/SetupActionsFragment;->-wrap1(Lcom/cyanogenmod/settings/profiles/SetupActionsFragment;)V

    .line 419
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 417
    return-void
.end method
