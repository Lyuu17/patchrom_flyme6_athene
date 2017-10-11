.class public Lcom/cyanogenmod/settingslib/applications/ApplicationsState$CompoundFilter;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompoundFilter"
.end annotation


# instance fields
.field private final mFirstFilter:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppFilter;

.field private final mSecondFilter:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppFilter;


# direct methods
.method public constructor <init>(Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppFilter;Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppFilter;)V
    .locals 0
    .param p1, "first"    # Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppFilter;
    .param p2, "second"    # Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppFilter;

    .prologue
    .line 1363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1364
    iput-object p1, p0, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$CompoundFilter;->mFirstFilter:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppFilter;

    .line 1365
    iput-object p2, p0, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$CompoundFilter;->mSecondFilter:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppFilter;

    .line 1363
    return-void
.end method


# virtual methods
.method public filterApp(Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 1
    .param p1, "info"    # Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$CompoundFilter;->mFirstFilter:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {v0, p1}, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$CompoundFilter;->mSecondFilter:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {v0, p1}, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$CompoundFilter;->mFirstFilter:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {v0}, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppFilter;->init()V

    .line 1371
    iget-object v0, p0, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$CompoundFilter;->mSecondFilter:Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {v0}, Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppFilter;->init()V

    .line 1369
    return-void
.end method
