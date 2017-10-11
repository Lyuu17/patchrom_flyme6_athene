.class Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference$2;
.super Ljava/lang/Object;
.source "ApplicationLightPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference$2;->this$0:Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 190
    return-void
.end method
