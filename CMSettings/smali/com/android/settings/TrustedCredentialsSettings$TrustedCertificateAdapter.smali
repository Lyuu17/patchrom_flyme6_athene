.class Lcom/cyanogenmod/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;
.super Landroid/widget/BaseAdapter;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Lcom/cyanogenmod/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrustedCertificateAdapter"
.end annotation


# instance fields
.field private final mData:Lcom/cyanogenmod/settings/TrustedCredentialsSettings$AdapterData;

.field final synthetic this$0:Lcom/cyanogenmod/settings/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/cyanogenmod/settings/TrustedCredentialsSettings;Lcom/cyanogenmod/settings/TrustedCredentialsSettings$Tab;)V
    .locals 2
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/TrustedCredentialsSettings;
    .param p2, "tab"    # Lcom/cyanogenmod/settings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/cyanogenmod/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 368
    new-instance v0, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$AdapterData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$AdapterData;-><init>(Lcom/cyanogenmod/settings/TrustedCredentialsSettings;Lcom/cyanogenmod/settings/TrustedCredentialsSettings$Tab;Lcom/cyanogenmod/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;Lcom/cyanogenmod/settings/TrustedCredentialsSettings$AdapterData;)V

    iput-object v0, p0, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mData:Lcom/cyanogenmod/settings/TrustedCredentialsSettings$AdapterData;

    .line 369
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->load()V

    .line 367
    return-void
.end method

.method synthetic constructor <init>(Lcom/cyanogenmod/settings/TrustedCredentialsSettings;Lcom/cyanogenmod/settings/TrustedCredentialsSettings$Tab;Lcom/cyanogenmod/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/TrustedCredentialsSettings;
    .param p2, "tab"    # Lcom/cyanogenmod/settings/TrustedCredentialsSettings$Tab;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;-><init>(Lcom/cyanogenmod/settings/TrustedCredentialsSettings;Lcom/cyanogenmod/settings/TrustedCredentialsSettings$Tab;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 384
    iget-object v1, p0, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mData:Lcom/cyanogenmod/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v1}, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$AdapterData;->-get1(Lcom/cyanogenmod/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 385
    .local v0, "certHolders":Ljava/util/List;, "Ljava/util/List<Lcom/cyanogenmod/settings/TrustedCredentialsSettings$CertHolder;>;"
    if-eqz v0, :cond_0

    .line 386
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    return v1

    .line 388
    :cond_0
    return v2
.end method

.method public getItem(I)Lcom/cyanogenmod/settings/TrustedCredentialsSettings$CertHolder;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 391
    iget-object v0, p0, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mData:Lcom/cyanogenmod/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v0}, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$AdapterData;->-get1(Lcom/cyanogenmod/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$CertHolder;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 390
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->getItem(I)Lcom/cyanogenmod/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 394
    int-to-long v0, p1

    return-wide v0
.end method

.method public getListViewId(Lcom/cyanogenmod/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p1, "tab"    # Lcom/cyanogenmod/settings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 377
    invoke-static {p1}, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$Tab;->-get2(Lcom/cyanogenmod/settings/TrustedCredentialsSettings$Tab;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/cyanogenmod/settings/TrustedCredentialsSettings;

    invoke-virtual {p0, p1}, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->getItem(I)Lcom/cyanogenmod/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mData:Lcom/cyanogenmod/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v2}, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$AdapterData;->-get2(Lcom/cyanogenmod/settings/TrustedCredentialsSettings$AdapterData;)Lcom/cyanogenmod/settings/TrustedCredentialsSettings$Tab;

    move-result-object v2

    invoke-static {v0, v1, v2, p2, p3}, Lcom/cyanogenmod/settings/TrustedCredentialsSettings;->-wrap0(Lcom/cyanogenmod/settings/TrustedCredentialsSettings;Lcom/cyanogenmod/settings/TrustedCredentialsSettings$CertHolder;Lcom/cyanogenmod/settings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 381
    new-instance v0, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;

    iget-object v1, p0, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mData:Lcom/cyanogenmod/settings/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;-><init>(Lcom/cyanogenmod/settings/TrustedCredentialsSettings$AdapterData;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 380
    return-void
.end method

.method public remove(Lcom/cyanogenmod/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 1
    .param p1, "certHolder"    # Lcom/cyanogenmod/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mData:Lcom/cyanogenmod/settings/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {v0, p1}, Lcom/cyanogenmod/settings/TrustedCredentialsSettings$AdapterData;->remove(Lcom/cyanogenmod/settings/TrustedCredentialsSettings$CertHolder;)V

    .line 372
    return-void
.end method
