.class final Lcom/cyanogenmod/settings/applications/ProcessStatsDetail$1;
.super Ljava/lang/Object;
.source "ProcessStatsDetail.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/applications/ProcessStatsDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/cyanogenmod/settings/applications/ProcStatsEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/cyanogenmod/settings/applications/ProcStatsEntry;Lcom/cyanogenmod/settings/applications/ProcStatsEntry;)I
    .locals 4
    .param p1, "lhs"    # Lcom/cyanogenmod/settings/applications/ProcStatsEntry;
    .param p2, "rhs"    # Lcom/cyanogenmod/settings/applications/ProcStatsEntry;

    .prologue
    .line 225
    iget-wide v0, p1, Lcom/cyanogenmod/settings/applications/ProcStatsEntry;->mRunWeight:D

    iget-wide v2, p2, Lcom/cyanogenmod/settings/applications/ProcStatsEntry;->mRunWeight:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 226
    const/4 v0, 0x1

    return v0

    .line 227
    :cond_0
    iget-wide v0, p1, Lcom/cyanogenmod/settings/applications/ProcStatsEntry;->mRunWeight:D

    iget-wide v2, p2, Lcom/cyanogenmod/settings/applications/ProcStatsEntry;->mRunWeight:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 228
    const/4 v0, -0x1

    return v0

    .line 230
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 224
    check-cast p1, Lcom/cyanogenmod/settings/applications/ProcStatsEntry;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/cyanogenmod/settings/applications/ProcStatsEntry;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/cyanogenmod/settings/applications/ProcessStatsDetail$1;->compare(Lcom/cyanogenmod/settings/applications/ProcStatsEntry;Lcom/cyanogenmod/settings/applications/ProcStatsEntry;)I

    move-result v0

    return v0
.end method
