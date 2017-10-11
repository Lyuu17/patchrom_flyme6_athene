.class Lcom/cyanogenmod/settings/applications/LockPatternActivity$2;
.super Ljava/lang/Object;
.source "LockPatternActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 109
    iput-object p1, p0, Lcom/cyanogenmod/settings/applications/LockPatternActivity$2;->this$0:Lcom/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 112
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/LockPatternActivity$2;->this$0:Lcom/cyanogenmod/settings/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/cyanogenmod/settings/applications/LockPatternActivity;->mCreate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/LockPatternActivity$2;->this$0:Lcom/cyanogenmod/settings/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/cyanogenmod/settings/applications/LockPatternActivity;->mConfirming:Z

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/LockPatternActivity$2;->this$0:Lcom/cyanogenmod/settings/applications/LockPatternActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/applications/LockPatternActivity;->setResult(I)V

    .line 119
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/LockPatternActivity$2;->this$0:Lcom/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/applications/LockPatternActivity;->finish()V

    .line 111
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/LockPatternActivity$2;->this$0:Lcom/cyanogenmod/settings/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/cyanogenmod/settings/applications/LockPatternActivity;->mRetryPattern:Z

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/LockPatternActivity$2;->this$0:Lcom/cyanogenmod/settings/applications/LockPatternActivity;

    iput-boolean v1, v0, Lcom/cyanogenmod/settings/applications/LockPatternActivity;->mRetryPattern:Z

    .line 115
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/LockPatternActivity$2;->this$0:Lcom/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-static {v0, v1}, Lcom/cyanogenmod/settings/applications/LockPatternActivity;->-wrap0(Lcom/cyanogenmod/settings/applications/LockPatternActivity;Z)V

    .line 116
    return-void
.end method
