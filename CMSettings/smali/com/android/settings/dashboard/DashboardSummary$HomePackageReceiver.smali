.class Lcom/cyanogenmod/settings/dashboard/DashboardSummary$HomePackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/dashboard/DashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomePackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/dashboard/DashboardSummary;


# direct methods
.method private constructor <init>(Lcom/cyanogenmod/settings/dashboard/DashboardSummary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/dashboard/DashboardSummary;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/cyanogenmod/settings/dashboard/DashboardSummary$HomePackageReceiver;->this$0:Lcom/cyanogenmod/settings/dashboard/DashboardSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyanogenmod/settings/dashboard/DashboardSummary;Lcom/cyanogenmod/settings/dashboard/DashboardSummary$HomePackageReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/dashboard/DashboardSummary;

    .prologue
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/dashboard/DashboardSummary$HomePackageReceiver;-><init>(Lcom/cyanogenmod/settings/dashboard/DashboardSummary;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cyanogenmod/settings/dashboard/DashboardSummary$HomePackageReceiver;->this$0:Lcom/cyanogenmod/settings/dashboard/DashboardSummary;

    invoke-static {v0, p1}, Lcom/cyanogenmod/settings/dashboard/DashboardSummary;->-wrap0(Lcom/cyanogenmod/settings/dashboard/DashboardSummary;Landroid/content/Context;)V

    .line 72
    return-void
.end method
