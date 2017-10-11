.class public interface abstract Lcom/cyanogenmod/settingslib/wifi/WifiTracker$WifiListener;
.super Ljava/lang/Object;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WifiListener"
.end annotation


# virtual methods
.method public abstract onAccessPointsChanged()V
.end method

.method public abstract onConnectedChanged()V
.end method

.method public abstract onWifiStateChanged(I)V
.end method
