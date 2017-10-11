.class Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings$3;
.super Landroid/database/ContentObserver;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 615
    iput-object p1, p0, Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings$3;->this$0:Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 618
    iget-object v0, p0, Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings$3;->this$0:Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;->-wrap1(Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;I)V

    .line 617
    return-void
.end method
