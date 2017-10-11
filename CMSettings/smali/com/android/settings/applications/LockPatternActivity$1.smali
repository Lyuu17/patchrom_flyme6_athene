.class Lcom/cyanogenmod/settings/applications/LockPatternActivity$1;
.super Ljava/lang/Object;
.source "LockPatternActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/applications/LockPatternActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/applications/LockPatternActivity;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/applications/LockPatternActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/applications/LockPatternActivity;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/cyanogenmod/settings/applications/LockPatternActivity$1;->this$0:Lcom/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/LockPatternActivity$1;->this$0:Lcom/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/cyanogenmod/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 90
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/LockPatternActivity$1;->this$0:Lcom/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/cyanogenmod/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 92
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/LockPatternActivity$1;->this$0:Lcom/cyanogenmod/settings/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/cyanogenmod/settings/applications/LockPatternActivity;->mCreate:Z

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/LockPatternActivity$1;->this$0:Lcom/cyanogenmod/settings/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/cyanogenmod/settings/applications/LockPatternActivity;->mConfirming:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/LockPatternActivity$1;->this$0:Lcom/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/cyanogenmod/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/LockPatternActivity$1;->this$0:Lcom/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/cyanogenmod/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 95
    const v2, 0x7f0c0877

    .line 94
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/LockPatternActivity$1;->this$0:Lcom/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/cyanogenmod/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/LockPatternActivity$1;->this$0:Lcom/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/cyanogenmod/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 98
    const v2, 0x7f0c0872

    .line 97
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/LockPatternActivity$1;->this$0:Lcom/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/cyanogenmod/settings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/LockPatternActivity$1;->this$0:Lcom/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/cyanogenmod/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c04c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/LockPatternActivity$1;->this$0:Lcom/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v1, v0, Lcom/cyanogenmod/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/LockPatternActivity$1;->this$0:Lcom/cyanogenmod/settings/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/cyanogenmod/settings/applications/LockPatternActivity;->mFingerPrintSetUp:Z

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/LockPatternActivity$1;->this$0:Lcom/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c033a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/LockPatternActivity$1;->this$0:Lcom/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c087f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
