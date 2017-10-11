.class Lcom/cyanogenmod/settings/DataUsageSummary$15;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/DataUsageSummary;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/DataUsageSummary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/DataUsageSummary;

    .prologue
    .line 567
    iput-object p1, p0, Lcom/cyanogenmod/settings/DataUsageSummary$15;->this$0:Lcom/cyanogenmod/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/cyanogenmod/settings/DataUsageSummary$15;->this$0:Lcom/cyanogenmod/settings/DataUsageSummary;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/DataUsageSummary;->highlightViewIfNeeded()V

    .line 569
    return-void
.end method
