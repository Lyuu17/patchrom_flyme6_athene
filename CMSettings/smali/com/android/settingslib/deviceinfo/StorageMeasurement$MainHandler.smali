.class Lcom/cyanogenmod/settingslib/deviceinfo/StorageMeasurement$MainHandler;
.super Landroid/os/Handler;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settingslib/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settingslib/deviceinfo/StorageMeasurement;


# direct methods
.method private constructor <init>(Lcom/cyanogenmod/settingslib/deviceinfo/StorageMeasurement;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settingslib/deviceinfo/StorageMeasurement;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/cyanogenmod/settingslib/deviceinfo/StorageMeasurement$MainHandler;->this$0:Lcom/cyanogenmod/settingslib/deviceinfo/StorageMeasurement;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyanogenmod/settingslib/deviceinfo/StorageMeasurement;Lcom/cyanogenmod/settingslib/deviceinfo/StorageMeasurement$MainHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settingslib/deviceinfo/StorageMeasurement;

    .prologue
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settingslib/deviceinfo/StorageMeasurement$MainHandler;-><init>(Lcom/cyanogenmod/settingslib/deviceinfo/StorageMeasurement;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 257
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/cyanogenmod/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;

    .line 258
    .local v0, "details":Lcom/cyanogenmod/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;
    iget-object v2, p0, Lcom/cyanogenmod/settingslib/deviceinfo/StorageMeasurement$MainHandler;->this$0:Lcom/cyanogenmod/settingslib/deviceinfo/StorageMeasurement;

    invoke-static {v2}, Lcom/cyanogenmod/settingslib/deviceinfo/StorageMeasurement;->-get2(Lcom/cyanogenmod/settingslib/deviceinfo/StorageMeasurement;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/cyanogenmod/settingslib/deviceinfo/StorageMeasurement$MainHandler;->this$0:Lcom/cyanogenmod/settingslib/deviceinfo/StorageMeasurement;

    invoke-static {v2}, Lcom/cyanogenmod/settingslib/deviceinfo/StorageMeasurement;->-get2(Lcom/cyanogenmod/settingslib/deviceinfo/StorageMeasurement;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 259
    :goto_0
    if-eqz v1, :cond_0

    .line 260
    invoke-interface {v1, v0}, Lcom/cyanogenmod/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;->onDetailsChanged(Lcom/cyanogenmod/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    .line 256
    :cond_0
    return-void

    .line 258
    :cond_1
    const/4 v1, 0x0

    .local v1, "receiver":Lcom/cyanogenmod/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;
    goto :goto_0
.end method
