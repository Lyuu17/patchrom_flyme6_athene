.class public interface abstract Lcom/cyanogenmod/settingslib/applications/ApplicationsState$Callbacks;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract onAllSizesComputed()V
.end method

.method public abstract onLauncherInfoChanged()V
.end method

.method public abstract onLoadEntriesCompleted()V
.end method

.method public abstract onPackageIconChanged()V
.end method

.method public abstract onPackageListChanged()V
.end method

.method public abstract onPackageSizeChanged(Ljava/lang/String;)V
.end method

.method public abstract onRebuildComplete(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRunningStateChanged(Z)V
.end method
