.class Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollEnrolling$9;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollEnrolling;->clearError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollEnrolling$9;->this$0:Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollEnrolling$9;->this$0:Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollEnrolling;->-get2(Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    return-void
.end method
