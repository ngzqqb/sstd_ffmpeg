
#include <string_view>
#include <iostream>
#include <fstream>
#include <QtCore/QtCore>
#include <array>

int main(int argc,char ** argv){

    using namespace std::string_view_literals;
#if defined (Q_OS_WIN)
    QCoreApplication varApp{argc,argv};

    const QDir varTarget{ varApp.applicationDirPath() };

    const QDir varTargetSource{ THE_SOURCE_DIR };

    QDirIterator varIt{
        varTargetSource.absoluteFilePath(QStringLiteral("ffmpeg_windows/bin")),
                QDir::Files
    };

    while( varIt.hasNext() ){
        varIt.next() ;
        const auto varFileInfo = varIt.fileInfo();
        if(varFileInfo.suffix() == QStringLiteral("dll") ){
            const auto varFrom = varFileInfo.absoluteFilePath();
            const auto varTo = varTarget.absoluteFilePath(varFileInfo.fileName());
            QFile::copy( varFrom , varTo );
#if defined (_DEBUG)
            qDebug() << varFrom << varTo ;
#endif
        }
    }

#else
    std::cout << "under linux you should install ffmpeg yourself"sv << std::endl;
#endif

    return 0;

}

