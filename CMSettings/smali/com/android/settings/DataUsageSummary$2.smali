.class Lcom/cyanogenmod/settings/DataUsageSummary$2;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/DataUsageSummary;
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
    .line 874
    iput-object p1, p0, Lcom/cyanogenmod/settings/DataUsageSummary$2;->this$0:Lcom/cyanogenmod/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 878
    iget-object v0, p0, Lcom/cyanogenmod/settings/DataUsageSummary$2;->this$0:Lcom/cyanogenmod/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/cyanogenmod/settings/DataUsageSummary;->-wrap11(Lcom/cyanogenmod/settings/DataUsageSummary;)V

    .line 876
    return-void
.end method
