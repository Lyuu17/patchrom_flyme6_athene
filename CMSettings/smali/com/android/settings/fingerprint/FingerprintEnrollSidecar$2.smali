.class Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollSidecar$2;
.super Ljava/lang/Object;
.source "FingerprintEnrollSidecar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollSidecar;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollSidecar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollSidecar;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollSidecar$2;->this$0:Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollSidecar$2;->this$0:Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0}, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollSidecar;->-wrap0(Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollSidecar;)V

    .line 140
    return-void
.end method
