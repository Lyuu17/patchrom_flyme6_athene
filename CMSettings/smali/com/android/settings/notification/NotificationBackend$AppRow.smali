.class public Lcom/cyanogenmod/settings/notification/NotificationBackend$AppRow;
.super Lcom/cyanogenmod/settings/notification/NotificationBackend$Row;
.source "NotificationBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/notification/NotificationBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppRow"
.end annotation


# instance fields
.field public banned:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field public label:Ljava/lang/CharSequence;

.field public peekable:Z

.field public pkg:Ljava/lang/String;

.field public priority:Z

.field public sensitive:Z

.field public settingsIntent:Landroid/content/Intent;

.field public soundTimeout:J

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/cyanogenmod/settings/notification/NotificationBackend$Row;-><init>()V

    return-void
.end method
