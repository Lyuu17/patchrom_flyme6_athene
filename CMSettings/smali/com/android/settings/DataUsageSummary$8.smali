.class Lcom/cyanogenmod/settings/DataUsageSummary$8;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 1573
    iput-object p1, p0, Lcom/cyanogenmod/settings/DataUsageSummary$8;->this$0:Lcom/cyanogenmod/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1576
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1577
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settingslib/AppItem;

    .line 1580
    .local v0, "app":Lcom/cyanogenmod/settingslib/AppItem;
    iget-object v3, p0, Lcom/cyanogenmod/settings/DataUsageSummary$8;->this$0:Lcom/cyanogenmod/settings/DataUsageSummary;

    invoke-static {v3}, Lcom/cyanogenmod/settings/DataUsageSummary;->-get21(Lcom/cyanogenmod/settings/DataUsageSummary;)Lcom/cyanogenmod/settingslib/net/UidDetailProvider;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 1582
    :cond_1
    iget-object v3, p0, Lcom/cyanogenmod/settings/DataUsageSummary$8;->this$0:Lcom/cyanogenmod/settings/DataUsageSummary;

    invoke-static {v3}, Lcom/cyanogenmod/settings/DataUsageSummary;->-get21(Lcom/cyanogenmod/settings/DataUsageSummary;)Lcom/cyanogenmod/settingslib/net/UidDetailProvider;

    move-result-object v3

    iget v4, v0, Lcom/cyanogenmod/settingslib/AppItem;->key:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/cyanogenmod/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/cyanogenmod/settingslib/net/UidDetail;

    move-result-object v2

    .line 1583
    .local v2, "detail":Lcom/cyanogenmod/settingslib/net/UidDetail;
    iget-object v3, p0, Lcom/cyanogenmod/settings/DataUsageSummary$8;->this$0:Lcom/cyanogenmod/settings/DataUsageSummary;

    iget-object v4, v2, Lcom/cyanogenmod/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v3, v0, v4}, Lcom/cyanogenmod/settings/DataUsageSummary$AppDetailsFragment;->show(Lcom/cyanogenmod/settings/DataUsageSummary;Lcom/cyanogenmod/settingslib/AppItem;Ljava/lang/CharSequence;)V

    .line 1575
    return-void
.end method
