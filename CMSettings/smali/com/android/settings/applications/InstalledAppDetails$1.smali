.class Lcom/cyanogenmod/settings/applications/InstalledAppDetails$1;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/cyanogenmod/settingslib/net/ChartData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/applications/InstalledAppDetails;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/applications/InstalledAppDetails;

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$1;->this$0:Lcom/cyanogenmod/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/cyanogenmod/settingslib/net/ChartData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1004
    new-instance v0, Lcom/cyanogenmod/settingslib/net/ChartDataLoader;

    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$1;->this$0:Lcom/cyanogenmod/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$1;->this$0:Lcom/cyanogenmod/settings/applications/InstalledAppDetails;

    invoke-static {v2}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->-get4(Lcom/cyanogenmod/settings/applications/InstalledAppDetails;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/cyanogenmod/settingslib/net/ChartDataLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/cyanogenmod/settingslib/net/ChartData;)V
    .locals 2
    .param p2, "data"    # Lcom/cyanogenmod/settingslib/net/ChartData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/cyanogenmod/settingslib/net/ChartData;",
            ">;",
            "Lcom/cyanogenmod/settingslib/net/ChartData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1009
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/cyanogenmod/settingslib/net/ChartData;>;"
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$1;->this$0:Lcom/cyanogenmod/settings/applications/InstalledAppDetails;

    invoke-static {v0, p2}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->-set0(Lcom/cyanogenmod/settings/applications/InstalledAppDetails;Lcom/cyanogenmod/settingslib/net/ChartData;)Lcom/cyanogenmod/settingslib/net/ChartData;

    .line 1010
    iget-object v0, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$1;->this$0:Lcom/cyanogenmod/settings/applications/InstalledAppDetails;

    invoke-static {v0}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->-get1(Lcom/cyanogenmod/settings/applications/InstalledAppDetails;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$1;->this$0:Lcom/cyanogenmod/settings/applications/InstalledAppDetails;

    invoke-static {v1}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails;->-wrap0(Lcom/cyanogenmod/settings/applications/InstalledAppDetails;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1008
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 1008
    check-cast p2, Lcom/cyanogenmod/settingslib/net/ChartData;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/cyanogenmod/settings/applications/InstalledAppDetails$1;->onLoadFinished(Landroid/content/Loader;Lcom/cyanogenmod/settingslib/net/ChartData;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/cyanogenmod/settingslib/net/ChartData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1014
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/cyanogenmod/settingslib/net/ChartData;>;"
    return-void
.end method
