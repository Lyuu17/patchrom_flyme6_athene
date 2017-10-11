.class Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings$3;
.super Ljava/lang/Object;
.source "WeatherServiceSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings$3;->this$0:Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings$3;->this$0:Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;

    invoke-static {v0}, Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;->-wrap0(Lcom/cyanogenmod/settings/cyanogenmod/WeatherServiceSettings;)V

    .line 450
    return-void
.end method
