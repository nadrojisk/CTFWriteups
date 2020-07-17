.class Lcom/tamu/ctf/howdyapp/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tamu/ctf/howdyapp/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tamu/ctf/howdyapp/MainActivity;

.field final synthetic val$buttonCount:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/tamu/ctf/howdyapp/MainActivity;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tamu/ctf/howdyapp/MainActivity;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/tamu/ctf/howdyapp/MainActivity$1;->this$0:Lcom/tamu/ctf/howdyapp/MainActivity;

    iput-object p2, p0, Lcom/tamu/ctf/howdyapp/MainActivity$1;->val$buttonCount:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 22
    iget-object v1, p0, Lcom/tamu/ctf/howdyapp/MainActivity$1;->val$buttonCount:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "count":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/tamu/ctf/howdyapp/MainActivity$1;->val$buttonCount:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    return-void
.end method
