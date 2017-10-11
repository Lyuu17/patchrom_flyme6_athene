.class Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings$1;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings$1;->this$0:Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 599
    iget-object v1, p0, Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings$1;->this$0:Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;

    invoke-static {v1}, Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;->-get5(Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;)I

    move-result v0

    .line 600
    .local v0, "changes":I
    iget-object v1, p0, Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings$1;->this$0:Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;->-set4(Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;I)I

    .line 601
    iget-object v1, p0, Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings$1;->this$0:Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;

    invoke-static {v1, v0}, Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;->-wrap8(Lcom/cyanogenmod/settings/wfd/WifiDisplaySettings;I)V

    .line 598
    return-void
.end method
