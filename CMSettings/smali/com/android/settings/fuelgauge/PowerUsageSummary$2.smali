.class Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary$2;
.super Ljava/lang/Object;
.source "PowerUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;

.field final synthetic val$intVals:[I


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;[I)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;
    .param p2, "val$intVals"    # [I

    .prologue
    .line 311
    iput-object p1, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;

    iput-object p2, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary$2;->val$intVals:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;

    invoke-static {v0}, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->-wrap0(Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 315
    const-string/jumbo v1, "low_power_trigger_level"

    .line 316
    iget-object v2, p0, Lcom/cyanogenmod/settings/fuelgauge/PowerUsageSummary$2;->val$intVals:[I

    aget v2, v2, p2

    .line 314
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 313
    return-void
.end method
