.class Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ContributorsCloudFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContributorsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsDataHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f130066

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 123
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 129
    if-nez p2, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 131
    .local v1, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f04002c

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 132
    new-instance v2, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsViewHolder;

    invoke-direct {v2, v4}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsViewHolder;-><init>(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsViewHolder;)V

    .line 133
    .local v2, "viewHolder":Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsViewHolder;
    const v3, 0x7f130066

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsViewHolder;->mLabel:Landroid/widget/TextView;

    .line 134
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 137
    .end local v1    # "li":Landroid/view/LayoutInflater;
    .end local v2    # "viewHolder":Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsViewHolder;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsDataHolder;

    .line 139
    .local v0, "dataHolder":Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsDataHolder;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsViewHolder;

    .line 140
    .restart local v2    # "viewHolder":Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsViewHolder;
    iget-object v3, v2, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsViewHolder;->mLabel:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsDataHolder;->mLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method
