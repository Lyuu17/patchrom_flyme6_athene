.class Lcom/cyanogenmod/settings/ScreenPinningSettings$2;
.super Ljava/lang/Object;
.source "ScreenPinningSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/ScreenPinningSettings;->updateDisplay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/ScreenPinningSettings;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/ScreenPinningSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/ScreenPinningSettings;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/cyanogenmod/settings/ScreenPinningSettings$2;->this$0:Lcom/cyanogenmod/settings/ScreenPinningSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/cyanogenmod/settings/ScreenPinningSettings$2;->this$0:Lcom/cyanogenmod/settings/ScreenPinningSettings;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/cyanogenmod/settings/ScreenPinningSettings;->-wrap1(Lcom/cyanogenmod/settings/ScreenPinningSettings;Z)Z

    move-result v0

    return v0
.end method
