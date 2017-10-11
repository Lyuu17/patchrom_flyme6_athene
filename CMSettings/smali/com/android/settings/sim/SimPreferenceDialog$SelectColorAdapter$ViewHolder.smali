.class Lcom/cyanogenmod/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SimPreferenceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/sim/SimPreferenceDialog$SelectColorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field label:Landroid/widget/TextView;

.field swatch:Landroid/graphics/drawable/ShapeDrawable;

.field final synthetic this$1:Lcom/cyanogenmod/settings/sim/SimPreferenceDialog$SelectColorAdapter;


# direct methods
.method private constructor <init>(Lcom/cyanogenmod/settings/sim/SimPreferenceDialog$SelectColorAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cyanogenmod/settings/sim/SimPreferenceDialog$SelectColorAdapter;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/cyanogenmod/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->this$1:Lcom/cyanogenmod/settings/sim/SimPreferenceDialog$SelectColorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyanogenmod/settings/sim/SimPreferenceDialog$SelectColorAdapter;Lcom/cyanogenmod/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cyanogenmod/settings/sim/SimPreferenceDialog$SelectColorAdapter;

    .prologue
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;-><init>(Lcom/cyanogenmod/settings/sim/SimPreferenceDialog$SelectColorAdapter;)V

    return-void
.end method
