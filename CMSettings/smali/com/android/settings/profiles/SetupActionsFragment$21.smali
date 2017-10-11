.class Lcom/cyanogenmod/settings/profiles/SetupActionsFragment$21;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/profiles/SetupActionsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 1069
    iput-object p1, p0, Lcom/cyanogenmod/settings/profiles/SetupActionsFragment$21;->this$0:Lcom/cyanogenmod/settings/profiles/SetupActionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/cyanogenmod/settings/profiles/SetupActionsFragment$21;->this$0:Lcom/cyanogenmod/settings/profiles/SetupActionsFragment;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 1073
    iget-object v0, p0, Lcom/cyanogenmod/settings/profiles/SetupActionsFragment$21;->this$0:Lcom/cyanogenmod/settings/profiles/SetupActionsFragment;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/profiles/SetupActionsFragment;->finishFragment()V

    .line 1071
    return-void
.end method
