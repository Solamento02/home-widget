package io.flutter.plugins.homewidget;

import android.appwidget.AppWidgetProvider;
import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.Intent;
import android.widget.RemoteViews;
import com.example.my_home_widget_app.R;

/**
 * Provider para o widget do aplicativo.
 * Estende a funcionalidade básica do AppWidgetProvider.
 */
public class HomeWidgetProvider extends AppWidgetProvider {
    
    // Método chamado quando o widget é atualizado
    @Override
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] appWidgetIds) {
        super.onUpdate(context, appWidgetManager, appWidgetIds);
        
        // Atualiza todos os widgets
        for (int appWidgetId : appWidgetIds) {
            updateAppWidget(context, appWidgetManager, appWidgetId);
        }
    }

    // Método para atualizar a aparência do widget
    static void updateAppWidget(Context context, AppWidgetManager appWidgetManager, int appWidgetId) {
        
        // Cria a RemoteView com o layout do widget
        RemoteViews views = new RemoteViews(context.getPackageName(), R.layout.home_widget_layout);

        // Aqui você pode atualizar os elementos do widget
        // views.setTextViewText(R.id.widget_title, "Título Atualizado");
        // views.setTextViewText(R.id.widget_message, "Mensagem Atualizada");

        // Instrui o gerenciador de widgets a atualizar o widget
        appWidgetManager.updateAppWidget(appWidgetId, views);
    }

    // Método chamado quando o widget recebe um broadcast
    @Override
    public void onReceive(Context context, Intent intent) {
        super.onReceive(context, intent);
        
        // Adicione aqui qualquer lógica adicional para tratar intents específicos
    }
}
