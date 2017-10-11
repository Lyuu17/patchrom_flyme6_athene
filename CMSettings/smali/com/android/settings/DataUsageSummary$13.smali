.class final Lcom/cyanogenmod/settings/DataUsageSummary$13;
.super Lcom/cyanogenmod/settings/search/BaseSearchIndexProvider;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2925
    invoke-direct {p0}, Lcom/cyanogenmod/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/cyanogenmod/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    const v4, 0x7f0c0bd3

    .line 2928
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2930
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/cyanogenmod/settings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2933
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2934
    .local v0, "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2935
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2936
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2939
    new-instance v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2940
    .restart local v0    # "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    const-string/jumbo v3, "data_usage_enable_mobile"

    iput-object v3, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2941
    const v3, 0x7f0c0bfe

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2942
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2943
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2946
    new-instance v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2947
    .restart local v0    # "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    const-string/jumbo v3, "data_usage_disable_mobile_limit"

    iput-object v3, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2948
    const v3, 0x7f0c0bf3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2949
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2950
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2953
    new-instance v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2954
    .restart local v0    # "data":Lcom/cyanogenmod/settings/search/SearchIndexableRaw;
    const-string/jumbo v3, "data_usage_cycle"

    iput-object v3, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2955
    const v3, 0x7f0c0bda

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2956
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2957
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2959
    return-object v2
.end method
